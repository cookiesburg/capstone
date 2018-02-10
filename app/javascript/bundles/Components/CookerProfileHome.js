import React from 'react';

export default class CookerProfileHome extends React.Component {
  render() {
    return(
      <div className='cooker-profile-home'>
        <div className='photo-box'>
          <img src={this.props.cooker.profile_photo}/>
          <h3>{this.props.cook}</h3>
        </div>
        <div className='info-box'>
          <div>
            <div>Weekly Price: {this.props.cooker.price_per_week}</div>
            <div>Neighborhood: {this.props.cooker.neighborhood}</div>
            <div>Specialty Diet: {this.props.cooker.dietary_options}</div>
            <div>Delivery Available: {this.props.cooker.delivery_available == true? 'Yes' : 'No'}</div>
          </div>
          <div className='food-description'>{this.props.cooker.food_description}</div>
        </div>
        <div>

        </div>
      </div>
    );
  }
}
