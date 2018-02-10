import React from 'react';

export default class PatronList extends React.Component {
  renderNames() {
    return (
      this.props.patrons.map((patron) => {
        return (
            <div
              className='list-group-item'>
              <h4>{patron.username}</h4>
            </div>
        );
      })
    );
  }
  renderEmails() {
    return (
      this.props.patrons.map((patron) => {
        return (
            <div
              className='list-group-item'>
              <h4>{patron.email}</h4>
            </div>
        );
      })
    );
  }
  renderPhones() {
    return (
      this.props.patrons.map((patron) => {
        return (
            <div
              className='list-group-item'>
              <h4>{patron.phone_number}</h4>
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
