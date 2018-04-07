import React, { Component } from 'react';
import { connect } from 'react-redux';
import { removeItemFromCart, changeAmount } from '../ducks/reducer'

class ProductDisplay extends Component {
    render() {
        const { product } = this.props
        return (
            <div className='cart-display-container'>
                <h3 className='cart-display-description'>{product.description}</h3>
                <img src={product.image} />
                <div className="cart-purchase-container">
                    <h4 className='cart-display-price'>Price:&nbsp;${product.price}</h4>
                    <div className="cart-in-amount-container">
                        <label htmlFor="in-cart-amount">Qty:&nbsp;</label>
                        <input id='in-cart-amount' className='in-cart-amount' type='number' value={product.amount} onChange={e => this.props.changeAmount(product.product_id, e.target.value)} />
                    </div>
                </div>
                <button className='remove-from-cart-btn' onClick={_ => this.props.removeItemFromCart(product.product_id)}>remove</button>
            </div>
        );
    }
}

export default connect(null, { removeItemFromCart, changeAmount })(ProductDisplay)