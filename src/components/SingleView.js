import React, { Component, Fragment } from 'react';
import axios from 'axios';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { addToCart } from '../ducks/reducer';

class SingleView extends Component {
    constructor() {
        super();
        this.state = {
            product: {},
            amount: 1,
            purchased: false
        }
    }

    componentDidMount() {
        axios.get(`/api/product/${this.props.match.params.id}`).then(({ data }) => {
            this.setState({
                product: data
            });
        });
    }

    changeAmount = (e) => {
        this.setState({
            amount: e.target.value
        });
    }

    addToCart = () => {
        const { product, amount } = this.state;
        let body = {
            ...product,
            amount
        }
        this.props.addToCart(body).then(result =>{
            this.setState({
                purchased: true
            })
        })
    }

    render() {
        const { description, image, price, product_id, type, subtype } = this.state.product
        return (
            <div className='single-view-container'>
                <div className="product-type-links">
                    <Link to='/products'>AllProducts</Link>
                    {!!type &&
                        <Fragment>
                            <span className='carret'>&nbsp;>&nbsp;</span>
                            <Link to={`/products?type=${type}`}>{type}</Link>
                            {!!subtype &&
                                <Fragment>
                                    <span className='carret'>&nbsp;>&nbsp;</span>
                                    <Link to={`/products?type=${type}&subType=${subtype}`}>{subtype}</Link>
                                </Fragment>
                            }
                        </Fragment>
                    }
                </div>
                <h3 className='single-view-title'>{description}</h3>
                <div className="single-view-image">
                    <img src={image} alt={description} />
                </div>
                <div className="single-view-info">
                    <h4 className='single-view-price'>Price: ${price}</h4>
                    <div className="purchase-container">
                        <div>
                            <label htmlFor="qty-input">qty:&nbsp;</label>
                            <input id='qty-input' className='add-to-cart-amount' type='number' value={this.state.amount} min={1} onChange={this.changeAmount} />
                        </div>
                        <button className='add-to-cart-btn' onClick={this.addToCart} > Add To Cart</button>
                    </div>
                    <p className='single-view-description'>Describing description Lorem ipsum, dolor sit amet consectetur adipisicing elit. Adipisci, tempora. Omnis ab necessitatibus quas excepturi esse dolorum libero aut, molestias obcaecati ut eius atque expedita amet earum neque quaerat. Illum.
                        Accusamus animi nam neque debitis fuga eveniet soluta optio, iste cupiditate consequatur sequi laudantium dolorum, earum ducimus tempore? Officia, qui itaque. Nisi esse eum maiores nulla perferendis corrupti, veritatis voluptatem!</p>
                </div>
                {this.state.purchased &&
                    <div className="purchased-model-background">
                        <div className="purchased-model">
                            <h4>Thanks for purchasing {description}</h4>
                            <img src={image} alt={description}/>
                            <div className="purchased-model-links-container">
                                <Link className="purchased-model-link continue-shopping-btn" to={type ? subtype ? `/products?type=${type}&subType=${subtype}` : `/products?type=${type}` : `/products`}>Continue Shopping</Link>
                                <Link className="purchased-model-link go-to-cart-btn" to='/cart'>Go To Cart</Link>
                            </div>
                        </div>
                    </div>
                }
            </div>
        );
    }
}

export default connect(null, { addToCart })(SingleView)