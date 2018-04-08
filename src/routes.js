import React from 'react'
import {Switch, Route} from 'react-router-dom'
import Home from './components/Home';
import Cart from './components/Cart';
import Products from './components/Products';
import SingleView from './components/SingleView';
import Search from './components/Search';
import Profile from './components/Profile';
import Login from './components/Login';
import CheckOut from './components/CheckOut';

export default (
<Switch>
    <Route exact path='/' component={Home} />
    <Route path='/products' component={Products}/>
    <Route path='/product/:id' component={SingleView}/>
    <Route path='/cart' component={Cart}/>
    <Route path='/search' component={Search}/>
    <Route path='/profile' component={Profile}/>
    <Route path='/login' component={Login}/>
    <Route path='/checkout' component={CheckOut}/>
</Switch>
)