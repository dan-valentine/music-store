import React, { Component } from 'react';
import routes from './routes';
import Header from './components/Header';
import {connect} from 'react-redux'
import {withRouter} from 'react-router-dom'
import {getCart, getCustomer} from './ducks/reducer';

class App extends Component {
  componentDidMount(){
    this.props.getCart();
    this.props.getCustomer();
  }
  render() {
    return (
      <div className="container">
        <Header />
        {routes}
      </div>
    );
  }
}

export default withRouter(connect(null, {getCart, getCustomer})(App));
