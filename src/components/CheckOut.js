import React, { Component } from 'react';
import {connect} from 'react-redux';
import axios from 'axios';
import StripeCheckout from 'react-stripe-checkout';
import {changeRedirect} from '../ducks/reducer';

class CheckOut extends Component {
    componentDidMount(){
        this.props.changeRedirect(this.props.match.url);
    }

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
        const cartTotal = this.props.cart.reduce((total, product) => {
            return total + Number(product.price) * product.amount
        }, 0);
        return (
            <div className="checkout-container">
                <StripeCheckout
                        token={this.onToken}
                        stripeKey={process.env.REACT_APP_STRIPE_PUB_KEY}
                        amount={cartTotal * 100}
                    />
            </div>
        );
    }
}

function mapStateToProps({cart, user}){
    return {cart, user}
}

export default connect(mapStateToProps, {changeRedirect})(CheckOut);