import React from 'react';
import styled from 'styled-components';
import Modal from 'react-modal';
import axios from 'axios';

const RestaurantImage = styled.img `
  height: 4rem;
  width: 4rem;
  border-radius: 4px;
  display: inline-block;
  grid-row: 2 / span 2;
`;

const Icon = styled.img `
  height: 24px;
  margin: 8px .8rem;
  vertical-align: middle;
`;

const Header = styled.h2 `
  font-size: 18px;
  font-weight: 700;
  line-height: 24px;
  margin: 0 0 16px;
  min-height: 24px;
  font-family: Helvetica;
  grid-column: 1 / span 2;

`;

const Details = styled.span `
  font-family: Helvetica;
  display: inline-block;
  vertical-align: middle;
`;

const RestaurantName = styled.h2 `
  font-size: 24px;
  font-weight: 700;
  line-height: 28px;
  font-family: Helvetica;
  margin: 0px;
  text-align: center;
  grid-column: 2 / span 3;
  text-align: left;
`;

const ReservationDetails = styled.div `
  display: inline-block
`;

const CountDown = styled.div `
  font-size: 14px;
  font-weight: 500;
  line-height: 24px;
  padding: .625rem 16px;
  background-color: #eef8fb;
  color: #2d333f;
  font-family: Helvetica;
  grid-column: 1 / span 4;
  grid-row: 5;
  border-radius: 4px;
`;

const Button = styled.button `
  font-family: sans-serif;
  background-color: #da3743;
  font-size: 1rem;
  color: #fff;
  width: 100%;
  border: none;
  border-radius: 2px;
  font-weight: 500;
  padding: .75rem 1rem;
  display: block;
  margin: auto;
  grid-column: 1 / span 2;
`;

const FormContainer = styled.div `
  display: grid;
  grid-template-columns: 50% 50%;
  grid-template-rows: 48px 66px 66px 66px 28px 28px 80px 40px;
`;

const DinerDetails = styled.div `
  font-family: Helvetica;
  font-weight: 500;
  font-size: 16px;
  grid-column: 1 / span 2;
    line-height: 24px;
    margin: 16px 0;
`;

const CheckboxLines = styled.div `
  grid-column: 1 / span 2;
  font-size: 1rem;
    font-weight: 300;
    line-height: 1.5rem;
    margin-bottom: 4px;
    font-family: Helvetica
`;

const Ending = styled.div `
  grid-column: 1 / span 2;
  font-size: 14px;
  line-height: 20px;
  font-family: Helvetica;
  color: #2d333f;
`;

const FormLeft = styled.input `
  width: 308px;
  height: 48px;
  align-self: start;
  justify-self: start;
  color: #2d333f;
  font-size: 16px;
  padding-left: 8px;
  margin-bottom
`;

const FormRight = styled.input `
  width: 308px;
  height: 48px;
  align-self: start;
  justify-self: end;
  color: #2d333f;
  font-size: 16px;
  padding-left: 8px;
`;

const SelectLeft = styled.select `
  width: 322px;
  height: 54px;
  align-self: start;
  justify-self: start;
  color: #2d333f;
  font-size: 16px;
  padding-left: 8px;
`;

const DetailContainer = styled.div `
  display: grid;
  grid-template-columns: 80px 1fr 1fr 1fr;
  grid-template-rows: 40px 32px 32px 16px 40px;
`;

class ReservationModal extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      showModal: true,
      firstName: '',
      lastName: '',
      contactInfo: '',
      occasion: '',
      email: '',
      timer: '5:00'
    };
  }

  componentDidMount() {
    // var minutes = 4;
    // var seconds = 59;
    // var self = this;
    // setInterval(function() {
    //   if (seconds) {
    //     seconds--;
    //   } else if (!seconds && minutes) {
    //     seconds = 59;
    //     minutes--;
    //   }
    //   self.setState({
    //     timer: `${minutes}:${seconds}`
    //   });
    // }, 1000);
  }

  handleCloseModal () {
    this.props.handleDisplayTimes();
    this.props.hideModal();
    const data = {
      date: `${this.props.date} ${this.props.time}`,
      partySize: this.props.partySize,
      name: `${this.state.firstName} ${this.state.lastName}`,
      contactInfo: this.state.contactInfo,
      occasion: this.state.occasion,
    };
    axios.post(`/api/bookings/${this.props.restaurantId}`, data)
      .then(response => {
        console.log(response);
      })
      .catch(error => {
        console.log(error);
      });
  }

  handleFirst(e) {
    this.setState ({
      firstName: e.target.value
    });
  }

  handleLast(e) {
    this.setState ({
      lastName: e.target.value
    });
  }

  handleContact(e) {
    this.setState ({
      contactInfo: e.target.value
    });
  }

  handleEmail(e) {
    this.setState ({
      email: e.target.value
    });
  }

  handleOccasion(e) {
    this.setState ({
      occasion: e.target.value
    });
  }

  render() {

    return (
      <div>
        <Modal
          ariaHideApp={false}
          isOpen={this.state.showModal}
          style={{
            overlay: {
              backgroundColor: 'rgba(0,0,0,.8)'
            },
            content: {
              top: '20%',
              left: '20%',
              right: '20%',
              bottom: '20%',
              borderRadius: '5px'
            }
          }}
        >
          <DetailContainer>
            <Header>You're almost done!</Header>
            <RestaurantImage src="https://media.radissonhotels.net/image/radisson-montevideo-victoria-plaza-hotel/restaurant/16256-114279-f63607438_3xl.jpg?impolicy=CustomCrop&cwidth=256&cheight=256"></RestaurantImage>
            <RestaurantName>{this.props.restaurantName}</RestaurantName>
            <div>
              <Icon src='https://cdn.iconscout.com/icon/premium/png-256-thumb/calendar-2513417-2104741.png'></Icon>
              <Details>{this.props.date}</Details>
            </div>
            <div>
              <Icon src='https://freeiconshop.com/wp-content/uploads/edd/clock-outline.png'></Icon>
              <Details>{this.props.time}</Details>
            </div>
            <div>
              <Icon src='https://freeiconshop.com/wp-content/uploads/edd/person-outline.png'></Icon>
              <Details>{`${this.props.partySize} people`}</Details>
            </div>
            <CountDown>
            We’re holding this table for you for {this.state.timer} minutes
            </CountDown>
          </DetailContainer>
          <FormContainer>
            <DinerDetails>Diner Details</DinerDetails>
            <FormLeft onChange={this.handleFirst.bind(this)} type="text" placeholder="First name"></FormLeft>
            <FormRight onChange={this.handleLast.bind(this)} type="text" placeholder="Last name"></FormRight>
            <FormLeft type="tel" autocomplete="tel" placeholder="Phone number" onChange={this.handleContact.bind(this)}></FormLeft>
            <FormRight type="email" placeholder="Email" autocomplete="email" onChange={this.handleEmail.bind(this)}></FormRight>
            <SelectLeft onChange={this.handleOccasion.bind(this)}>
              <option value="default">Select an occasion (optional)</option>
              <option value="birthday">Birthday</option>
              <option value="anniversary">Anniversary</option>
              <option value="date">Date night</option>
              <option value="business_meal">Business Meal</option>
              <option value="special_occasion">Celebration</option>
            </SelectLeft>
            <FormRight placeholder="Special Request (Optional)"></FormRight>
            <CheckboxLines>
              <input type="checkbox"></input>
              <span>Sign me up to receive dining offers and news from this restaurant by email</span>
            </CheckboxLines>
            <CheckboxLines>
              <input type="checkbox"></input>
              <span>Yes, I want to collect 100 points for this reservation.</span>
            </CheckboxLines>
            <Button onClick={this.handleCloseModal.bind(this)}>Complete Reservation</Button>
            <Ending>By clicking “Complete reservation” you agree to the OpenTable Terms of Use and Privacy Policy. Standard text message rates may apply. You may opt out of receiving text messages at any time.</Ending>
          </FormContainer>
        </Modal>
      </div>
    );
  }
}

export default ReservationModal;