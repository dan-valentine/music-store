import axios from 'axios';

const initialState = {
    user: {},
    cart: [],
    redirect: '/'
}
// Actions
const ADD_TO_CART = 'ADD_TO_CART';
const GET_CART = 'GET_CART';
const CHANGE_CARY_AMOUNT = 'CHANGE_CARY_AMOUNT';
const REMOVE_ITEM_FROM_CART = 'REMOVE_ITEM_FROM_CART';
const GET_CUSTOMER = 'GET_CUSTOMER';
const CHANGE_REDIRECT = 'CHANGE_REDIRECT';

// Reducer
export default function reducer(state = initialState, action) {
    switch (action.type) {
        case CHANGE_CARY_AMOUNT+'_FULFILLED':
        case REMOVE_ITEM_FROM_CART+'_FULFILLED':
        case ADD_TO_CART+'_FULFILLED':
        case GET_CART+'_FULFILLED':
            return Object.assign({}, state, {cart: action.payload})
        case GET_CUSTOMER+'_FULFILLED':
            return Object.assign({}, state, {user: action.payload})
        case CHANGE_REDIRECT:
            return Object.assign({}, state, {redirect: action.payload})
        default: return state;
    }
}

// Action Creators
export function getCart() {
    let promise = axios.get('/api/cart').then(({data}) => data);
    return {
        payload: promise,
        type: GET_CART
    }
};

export function addToCart(item) {
    let promise = axios.post('/api/cart', item).then(({data}) => data);
    return {
        payload: promise,
        type: ADD_TO_CART
    }
};

export function changeAmount(id, amount){
    let promise = axios.patch(`/api/cart/${id}`, {amount}).then(({data}) => data);
    return {
        payload: promise,
        type: CHANGE_CARY_AMOUNT
    }
}

export function removeItemFromCart(id){
    let promise = axios.delete(`/api/cart/${id}`).then(({data}) => data);
    return {
        payload: promise,
        type: REMOVE_ITEM_FROM_CART
    }
}

export function getCustomer() {
    let promise = axios.get('/auth/me').then(({data}) => data);
    console.log('action fired')
    return {
        payload: promise,
        type: GET_CUSTOMER
    }
};

export function changeRedirect(url){
    return {
        payload: url,
        type: CHANGE_REDIRECT
    }
}