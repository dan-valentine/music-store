import React, { Component } from 'react';
import {connect} from 'react-redux';
import {changeRedirect} from '../ducks/reducer';

class Home extends Component {
    componentDidMount(){
        this.props.changeRedirect(this.props.match.url);
    }

    render() {
        return (
            <div className='home-container'>Home</div>
        );
    }
}

export default connect(null, {changeRedirect})(Home);