require('dotenv').config();

const express = require('express'),
    bodyParser = require('body-parser'),
    massive = require('massive'),
    session = require('express-session'),
    passport = require('passport'),
    Auth0Strategy = require('passport-auth0'),
    productCtrl = require('./controllers/productsCtrl'),
    cartCtrl = require('./controllers/cartCtrl');
    searchCtrl = require('./controllers/searchCtrl');
    paymentCtrl = require('./controllers/paymentCtrl');

const app = express();

/////////////////////////
///TOPLEVEL MIDDELWARE///
/////////////////////////
app.use(session({
    secret: process.env.SESSION_SECRET,
    saveUninitialized: true,
    resave: false
}));
app.use(bodyParser.json());
app.use(express.static( `${__dirname}/../build` ) );

/////////////////////
///Auth MIDDLEWARE///
/////////////////////

app.use(passport.initialize());
app.use(passport.session());

////////////////////////////////
////CART TOPLEVEL MIDDLEWARE////
////////////////////////////////
app.use((req, res, next) =>{
    if(!req.session.cart){
        req.session.cart = [];
    }
    next();
})

/////////////////////////
///END CART MIDDLEWARE///
/////////////////////////

////////////////////
///AUTHENTICATION///
////////////////////
passport.use(new Auth0Strategy({
    domain: process.env.AUTH_DOMAIN,
    clientID: process.env.AUTH_CLIENT_ID,
    clientSecret: process.env.AUTH_CLIENT_SECRET,
    callbackURL: process.env.AUTH_CALLBACK
}, function (processToken, refreshToken, extraParams, profile, done) {
    const db = app.get('db');
    db.customer.findCustomerByAuth(profile.id).then(user => {
        if (user.length) {
            return done(null, user[0].customer_id);
        } else {
            let auth_id = profile.id;
            let username = profile.name || "";
            let userArr = [auth_id, username];
            db.customer.addCustomer(userArr).then(user => {
                return done(null, user[0].customer_id);
            })
        }
    })
}))

passport.serializeUser(function (customer_id, done) {
    done(null, customer_id);
})

passport.deserializeUser(function (customer_id, done) {
    const db = app.get('db');
    db.customer.findCustomerById(customer_id).then(user => {
        done(null, user[0]);
    });

})
////////////////////////
///END AUTHENTICATION///
////////////////////////

//////////////
///DATABASE///
///////////////
massive(process.env.CONNECTION_STRING).then(db => {
    app.set('db', db)
    app.listen(process.env.SERVER_PORT, _=>console.log(`connected to the database and getting down on ${process.env.SERVER_PORT}`));

})
    .catch(err => console.log(err, 'see massive connection function'));

///////////////
///ENDPOINTS///
///////////////

//Auth Endpoints
app.get('/auth', (req, res, next)=>{
    console.log(req.query.loginRedirect);
    req.session.redirect = req.query.loginRedirect;
    next();
},passport.authenticate('auth0'));

app.get('/auth/callback', (req, res, next) =>{
    passport.authenticate('auth0', {
        successRedirect: process.env.SUCCESS_REDIRECT + req.session.redirect,
        failureRedirect: process.env.FAILURE_REDIRECT
    })(req, res, next);
});

app.get('/auth/logout', (req, res) => {
    req.logout();
    res.redirect(302, 'https://dvalentine.auth0.com/v2/logout?returnTo=http%3A%2F%2Flocalhost%3A3000%2F');
})
app.get('/auth/me', (req, res) =>{
    res.send(req.user)
})

//PaymentEndpoint
app.post('/api/payment', paymentCtrl.payment )

// Product Endpoints
app.get(`/api/products`, productCtrl.getPage);
app.get(`/api/product/:id`, productCtrl.findOne);

// Cart Endpoints
app.get(`/api/cart`, cartCtrl.getCart);
app.post(`/api/cart`, cartCtrl.addToCart);
app.patch(`/api/cart/:id`, cartCtrl.changeAmount);
app.delete(`/api/cart/:id`, cartCtrl.delete);

// Search Endpoint
app.get('/api/search', searchCtrl.search)