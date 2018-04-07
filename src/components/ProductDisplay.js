import React from 'react';
import { Link } from 'react-router-dom';

export default function ProductDisplay({ product }) {
    return (
        <Link to={`/product/${product.product_id}`} className='product-display-link' >
            <div className='product-display-container'>
                <img src={product.image} alt={product.description} />
                <h3 className='product-display-description'>{product.description}</h3>
                <h4 className='product-display-price'>${product.price}</h4>
            </div>
        </Link >
    );
}