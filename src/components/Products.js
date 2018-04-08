import React, { Component, Fragment } from 'react';
import axios from 'axios';
import queryString from 'query-string';
import { Link } from 'react-router-dom';
import {connect} from 'react-redux';
import {changeRedirect} from '../ducks/reducer';
import ProductDisplay from './ProductDisplay';

class Products extends Component {
    constructor(props) {
        super(props);
        this.state = {
            products: [],
            page: 1,
            nextPage: false,
            loading: true,
            search: props.location.search
        }
    }

    componentDidMount() {
        this.getNextPage().then(_ => {
            window.addEventListener('scroll', this.onScroll, false);
        });
        this.props.changeRedirect(this.props.match.url + this.state.search);
        
    }

    componentWillUnmount() {
        window.removeEventListener('scroll', this.onScroll, false);
    }

    componentWillReceiveProps(nextProps) {
        if (this.props.location.search !== nextProps.location.search) {
            this.setState({
                products: [],
                page: 1,
                search: nextProps.location.search
            },
                _ => {
                    this.props.changeRedirect(this.props.match.url + this.state.search);
                    this.getNextPage()
                })
        }
    }

    getNextPage() {
        this.setState({
            loading: true
        });

        return axios.get(`/api/products${this.state.search || '?'}&page=${this.state.page}`).then(({ data }) => {
            this.setState({
                products: [...this.state.products, ...data.slice(0, 10)],
                page: this.state.page + 1,
                nextPage: data.length === 11,
                loading: false
            })
        })
    }

    onScroll = () => {
        if (
            (window.innerHeight + window.scrollY) >= (document.body.offsetHeight - 200) && !this.state.loading && this.state.nextPage
        ) {
            this.getNextPage();
        }
    }

    render() {


        const parsed = queryString.parse(this.state.search);

        const products = this.state.products.map(product => <ProductDisplay product={product} key={product.product_id} />);
        return (
            <div className='products-container'>
                <div className="product-type-links">
                    <Link to='/products'>AllProducts</Link>
                    {!!parsed.type &&
                        <Fragment>
                            <span className='carret'>&nbsp;>&nbsp;</span>
                            <Link to={`/products?type=${parsed.type}`}>{parsed.type}</Link>
                            {!!parsed.subType &&
                                <Fragment>
                                    <span className='carret'>&nbsp;>&nbsp;</span>
                                    <Link to={`/products?type=${parsed.type}&subType=${parsed.subType}`}>{parsed.subType}</Link>
                                </Fragment>
                            }
                        </Fragment>
                    }
                </div>

                <div className="products-gallery">
                    {products}
                </div>
            </div>
        );
    }
}

export default connect(null, {changeRedirect})(Products);