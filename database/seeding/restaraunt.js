const fs = require('fs');
const csvWriter = require('csv-write-stream');
const faker = require('faker');
let writer = csvWriter();
let writer2 = csvWriter();
let writer3 = csvWriter();

const restaurantEnding = ['Cafe', 'Restaurant', 'Steak House', 'Pizza House', 'Diner', 'Eatery', 'Joint', 'Canteen', 'BBQ', 'Chophouse', 'Bar', 'Bistro', 'Sandwiches', 'Burgers', 'Pizza', 'BrewHouse', 'Tacos', ' Super Burritos', 'Bar & Grill', 'Juicery', 'Grill', 'Breakfast', 'Dinner', 'Lunch', 'Brunch'];

const foodType = ['Italian', 'American', 'Indian','Japanese', 'BBQ', 'Mexican', 'Hawaiian'];

const months = ['October', 'August', 'September', 'July', 'November', 'June']

const days = [ '1', '2','3','4', '5', '6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30']

const year = '2020'

const timeHours = ['1','2','3','4','5','6','7','8','9','10','11','12']

const timeMinutes = ['00','15','30','45']

const dayNight = ['AM', 'PM']

const dataGen = async () => {
  const createRestaurantTable = async () => {
    writer.pipe(fs.createWriteStream('restaurantInfo6.csv'));
    for (let i = 0; i < 5000000; i++) {
      writer.write({
        // restaraunt_id: i + 1,
        restaraunt_name: `${faker.name.firstName()}'s ${restaurantEnding[Math.floor(Math.random() * 25)]}`,
        restaraunt_address: faker.address.streetAddress(),
        food_type: foodType[Math.floor(Math.random() * 7)]
      });
    }
    writer.end();
    console.log('generated restaurant csv');
  }
  await createRestaurantTable();
}

const dataGen2 = async () => {
  const createUserTable = async () => {
    writer2.pipe(fs.createWriteStream('userInfo11.csv'));
    for (let i = 0; i < 5000000; i++) {
      let cap = faker.random.number({min:2, max: 12})
      writer2.write({
        // user_id: i + 1,
        first_name: faker.name.firstName(),
        last_name: faker.name.lastName(),
        phone_number: faker.phone.phoneNumberFormat(),
        email: faker.internet.email(),
        party_size: cap
      });
    }
    writer.end();
    console.log('generated user csv');
  }
  await createUserTable();
}

const dataGen3 = async () => {
  const createReservationTable = async () => {
    writer3.pipe(fs.createWriteStream('reservationInfo21.csv'));
    for (let i = 0; i < 500000; i++) {
      writer3.write({
        // times_id: i + 1,
        time_slot: `${timeHours[Math.floor(Math.random() * 12)]}:${timeMinutes[Math.floor(Math.random() * 4)]} ${dayNight[Math.floor(Math.random() * 2)]}`,
        booking_date: `${months[Math.floor(Math.random() * 6)]} ${days[Math.floor(Math.random() * 30)]}, ${year}`,
        restaraunt_id: faker.random.number({min:1, max: 35000000}),
        user_id: faker.random.number({min:1, max: 50000000}),
      });
    }
    writer.end();
    console.log('generated reservation csv');
  }
  await createReservationTable();
}
dataGen();
dataGen2();
dataGen3();