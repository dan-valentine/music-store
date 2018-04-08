import React, { Component } from 'react';
import { connect } from 'react-redux';
import CartDisplay from './CartDisplay';
import {changeRedirect} from '../ducks/reducer';

class Cart extends Component {

    componentDidMount(){
        this.props.changeRedirect(this.props.match.url)
    }

    onCheckoutClick=()=>{
        if(this.props.user.customer_id){
            this.props.history.push('/checkout');
        }else{
            this.props.history.push('/login');
        }
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
                    <h4>Total : ${cartTotal}</h4>
                    
                    {!!cart.length && <button className='cart-checkout-btn' onClick={this.onCheckoutClick}>Checkout</button>}
                </div>
            </div>
        );
    }
}

function mapStateToProps({ cart, user }) {
    return { cart, user }
}

export default connect(mapStateToProps,{changeRedirect})(Cart)