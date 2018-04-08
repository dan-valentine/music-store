import React, { Component } from 'react';
import {connect} from 'react-redux';
import {changeRedirect} from '../ducks/reducer';

class Profile extends Component {
    componentDidMount(){
        this.props.changeRedirect(this.props.match.url);
    }

    render() {
        return (
            <div className="profile-container">
                Profile
            </div>
        );
    }
}

export default connect(null, {changeRedirect})(Profile);