import React, { Component, Fragment } from 'react';
import axios from 'axios';
import queryString from 'query-string';
import { Link } from 'react-router-dom';
import {connect} from 'react-redux';
import {changeRedirect} from '../ducks/reducer';
import ProductDisplay from './ProductDisplay';

class Search extends Component {
    constructor(props) {
        super(props);
        this.state = {
            products: [],
            page: 1,
            nextPage: false,
            loading: true,
            formName: '',
            formPriceMin: 0,
            formPriceMax: 8000,
            formOrderBy: 'name',
            formOrder: 'Ascending',
            searchName: '',
            searchPriceMin: 0,
            searchPriceMax: 8000,
            searchOrderBy: 'name',
            searchOrder: 'Ascending',
        }
    }

    componentDidMount() {
        this.props.changeRedirect(this.props.match.url);
        this.getNextPage().then(_ => {
            window.addEventListener('scroll', this.onScroll, false);
        });
    }

    componentWillUnmount() {
        window.removeEventListener('scroll', this.onScroll, false);
    }

    getNextPage() {
        this.setState({
            loading: true
        });
        const { searchName, searchOrder, searchOrderBy, searchPriceMax, searchPriceMin, page } = this.state
        let url = `/api/search?name=${searchName}&min=${searchPriceMin}&max=${searchPriceMax}&orderBy=${searchOrderBy}&order=${searchOrder}&page=${page}`;

        return axios.get(url).then(({ data }) => {
            this.setState({
                products: [...this.state.products, ...data.slice(0, 10)],
                page: this.state.page + 1,
                nextPage: data.length === 11,
                loading: false
            });
        })
    }

    onFormChange = (prop, { value }) => {
        this.setState({
            [prop]: value
        })
    }

    onFormSubmit = event => {
        event.preventDefault();
        this.setState({
            searchName: this.state.formName,
            searchPriceMin: this.state.formPriceMin,
            searchPriceMax: this.state.formPriceMax,
            searchOrderBy: this.state.formOrderBy,
            searchOrder: this.state.formOrder,
            page: 1,
            products: []
        }, this.getNextPage)
    }

    onScroll = () => {
        if (
            (window.innerHeight + window.scrollY) >= (document.body.offsetHeight - 200) && !this.state.loading && this.state.nextPage
        ) {
            this.getNextPage();
        }
    }

    render() {
        const products = this.state.products.map(product => <ProductDisplay product={product} key={product.product_id} />);
        return (
            <div className='products-container'>
                <form className="search-form" onSubmit={this.onFormSubmit}>
                <h2>Search By:</h2>
                    <div className='search-by-name-container'>
                        <label htmlFor="search-by-name">
                            Name:
                        </label>
                        <input value={this.state.formName} onChange={({ target }) => this.onFormChange('formName', target)} type="text" name="search-by-name" id="search-by-name" />
                    </div>
                    <div className='search-by-price-container'>
                        <div className="search-by-min-price-container">
                            <label htmlFor="search-by-min-price">Price Min:</label>
                            <input value={this.state.formPriceMin} onChange={({ target }) => this.onFormChange('formPriceMin', target)} type="number" name="search-by-min-price" id="search-by-min-price" />
                        </div>
                        <div className="search-by-max-price-container">
                            <label htmlFor="search-by-max-price">Price Max:</label>
                            <input value={this.state.formPriceMax} onChange={({ target }) => this.onFormChange('formPriceMax', target)} type="number" name="search-by-max-price" id="search-by-max-price" />
                        </div>
                    </div>
                    <div className='search-order-container'>
                        <label htmlFor="search-by-type-order">
                            Order By:
                        </label>
                        <select value={this.state.formOrderBy} onChange={({ target }) => this.onFormChange('formOrderBy', target)} name="search-by-type-order" className="search-by-type-order" id="search-by-type-order">
                            <option value='name'>Name</option>
                            <option value='type'>Type</option>
                            <option value='price'>Price</option>
                        </select>
                        <select value={this.state.formOrder} onChange={({ target }) => this.onFormChange('formOrder', target)} name="search-by-order" className="search-by-order" id="search-by-order">
                            <option value='Ascending'>Ascending</option>
                            <option value='Descending'>Descending</option>
                        </select>
                    </div>
                    <button className='search-submit-button' type="submit">Search</button>
                </form>

                <div className="products-gallery">
                    {products}
                </div>
            </div>
        );
    }
}

export default connect(null, {changeRedirect})(Search)