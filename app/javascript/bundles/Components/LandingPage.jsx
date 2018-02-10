import React from 'react';

export default class LandingPage extends React.Component {
  render() {
    return(
      <div className='landing-container'>
        <div className='landing-graphic'>
          <h1>SoupLady</h1>
          <h3>A community-driven approach to better food.</h3>
        </div>
        <div>
          souplady is a platform that connects community members who love to cook with others that would like to eat
          healthier, tastier homecooked meals. Providing homecooks with an alternative source of income and keeping
          money from community members in the community
        </div>

      </div>
    );
  }
}
