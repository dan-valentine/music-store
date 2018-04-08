import React, { Component } from 'react';
import {connect} from 'react-redux';
import {Link} from 'react-router-dom';
import {changeRedirect} from '../ducks/reducer';

class Login extends Component {
    componentDidMount(){
        this.props.changeRedirect('/checkout');
    }

    render() {
        return (
            <div className="login-container">
                <a href={`${process.env.REACT_APP_LOGIN}?loginRedirect=/checkout`}>Login</a>
                <Link to='/checkout'>Continue as Guest</Link>
            </div>
        );
    }
}

export default connect(null, {changeRedirect})(Login);