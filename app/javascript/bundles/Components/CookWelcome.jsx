import React from 'react';
import PatronList from './PatronList';

export default class CookWelcome extends React.Component {

  render() {
    return(
      <div className='cook-welcome'>
        <h3>Welcome {this.props.cook}</h3>
        <h4>You have <strong>{this.props.patrons.length}</strong> patrons to feed this week</h4>
      </div>
    );
  }
}

// want to figure out how to toggle the patronlist 
