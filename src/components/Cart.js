import React, { Component } from 'react';
import { connect } from 'react-redux';
import StripeCheckout from 'react-stripe-checkout';
import axios from 'axios';
import CartDisplay from './CartDisplay';

class Cart extends Component {

    onToken = (token) => {
        const { cart } = this.props
        const cartTotal = cart.reduce((total, product) => {
            return total + Number(product.price) * product.amount
        }, 0);

        token.card = void 0;
        console.log('token', token);
        axios.post('/api/payment', { token, amount: cartTotal * 100 }).then(response => {
            alert('we are in business')
        });
    }

    render() {
        const { cart } = this.props
        const products = cart.map(product => <CartDisplay product={product} />)
        const cartTotal = cart.reduce((total, product) => {
            return total + Number(product.price) * product.amount
        }, 0);

        return (
            <div className='cart-container'>
                <h2 className='cart-title'>Your Cart</h2>
                <div className="cart-gallery">
                    {products}
                </div>
                <div className="cart-summary">
                    <h4>Totghjkal : ${cartTotal}</h4>
                    <StripeCheckout
                        token={this.onToken}
                        stripeKey={process.env.REACT_APP_STRIPE_PUB_KEY}
                        amount={cartTotal * 100}
                    />
                    {!!cart.length && <button className='cart-checkout-btn'>Checkout</button>}
                </div>
            </div>
        );
    }
}

function mapStateToProps({ cart, user }) {
    return { cart, user }
}

export default connect(mapStateToProps)(Cart)