import React from 'react';
import './style';

export default class PatronList extends React.Component {
  renderNames() {
    return (
      this.props.patrons.map((patron) => {
        return (
            <li
              key={patron.username}
              className='list-group-item'>
              <p>{patron.username}</p>
            </li>
        );
      })
    );
  }
  renderEmails() {
    return (
      this.props.patrons.map((patron) => {
        return (
            <li
              key={patron.username}
              className='list-group-item'>
              <p>{patron.email}</p>
            </li>
        );
      })
    );
  }
  renderPhones() {
    return (
      this.props.patrons.map((patron) => {
        return (
            <div
              key={patron.username}
              className='list-group-item'>
              <p>{patron.phone_number}</p>
            </div>
        );
      })
    );
  }
  render() {
    return (
      <div className='patron-list'>
        <div className='patron-list-column'>
          <h5>Username</h5>
          {this.renderNames()}
        </div>
        <div className='patron-list-column'>
          <h5>Email</h5>
          {this.renderEmails()}
        </div>
        <div className='patron-list-column'>
            <h5>Phone Number</h5>
          {this.renderPhones()}
        </div>
      </div>
    );
  }
}
