import React, { Component, Fragment } from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import hamburgerIcon from '../assets/hamburger.png';
import cartIcon from '../assets/cart.png';
import searchIcon from '../assets/search.svg';

class Header extends Component {
    constructor() {
        super();
        this.state = {
            showMenu: false
        }
    }

    expandMenu = () => {
        this.setState({
            showMenu: !this.state.showMenu
        });
    }

    render() {
        const cartSize = this.props.cart.reduce((p, e) => {
            return Number(p) + Number(e.amount)
        }, 0);
        return (
            <div className='header-container'>
                <Link to='/' className='header-title'>
                    <span className='red'>Music</span>Store
                </Link>
                <div className="mobile-header-container">
                    <Link to='/search' className='search-icon-container'>
                        <img className='search-icon' src={searchIcon} alt="search icon" />

                    </Link>
                    <Link to='/cart' className='cart-icon-container'>
                        <img className='cart-icon' src={cartIcon} alt="cart icon" />
                        <div className='cart-amount'>{cartSize}</div>
                    </Link>
                    <div className='dropdown-container' onClick={this.expandMenu}>
                        <img className='hamburger-menu' src={hamburgerIcon} alt="menu" />
                        <div className={this.state.showMenu ? 'expanded dropdown-menu' : 'dropdown-menu'} >
                            <Link className='type-link' to='/products?type=Guitars'>Guitars</Link>
                            <Link className='subtype-link type-link' to='/products?type=Guitars&subType=Electric'>Electric</Link>
                            <Link className='subtype-link type-link' to='/products?type=Guitars&subType=Acoustic'>Acoustic</Link>
                            <Link className='subtype-link type-link' to='/products?type=Guitars&subType=Acoustic-Electric'>Acoustic-Electric</Link>
                            <Link className='type-link' to='/products?type=Bass'>Bass</Link>
                            <Link className='subtype-link type-link' to='/products?type=Bass&subType=Electric'>Electric</Link>
                            <Link className='subtype-link type-link' to='/products?type=Bass&subType=Acoustic'>Accoustic</Link>
                            <Link className='subtype-link type-link' to='/products?type=Bass&subType=Electric Upright'>Electric Upright</Link>
                            <Link className='type-link' to='/products?type=Drums'>Drums</Link>
                            <Link className='subtype-link type-link' to='/products?type=Drums&subType=Acoustic'>Accoustic</Link>
                            <Link className='subtype-link type-link' to='/products?type=Drums&subType=Electronic'>Electronic</Link>
                            {
                                this.props.user.customer_id ?
                                    <Fragment>
                                        <Link className='type-link' to='/profile'>Profile</Link>
                                        <a className='subtype-link type-link' href={process.env.REACT_APP_LOGIN}>Logout</a>
                                    </Fragment>
                                    :
                                    <a className='type-link' href={process.env.REACT_APP_LOGIN}>Login</a>

                            }
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

function mapStateToProps(state) {
    return {
        cart: state.cart,
        user: state.user
    }
}
export default connect(mapStateToProps)(Header)