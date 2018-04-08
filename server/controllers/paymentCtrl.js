require('dotenv').config();
const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY)

module.exports = {
    payment: function (req, res, next) {

        const charge = stripe.charges.create({
            amount: req.body.amount,
            currency: 'usd',
            source: req.body.token.id,
            description: 'Test charge from react app'
        }, function (err, charge) {
            if (err) return res.sendStatus(500)
            return res.sendStatus(200);
        });
    }
}