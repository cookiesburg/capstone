import React from 'react';

export default class PatronList extends React.Component {
  render() {
    return (
      this.props.patrons.map((patron) => {
        return <div>{patron.username}</div>;
      })
    );
  }
}
