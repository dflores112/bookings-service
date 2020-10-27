const fs = require('fs');
const csvWriter = require('csv-write-stream');
const faker = require('faker');
let writer = csvWriter();
let writer2 = csvWriter();
let writer3 = csvWriter();
let writer4 = csvWriter();

const restaurantEnding = ['Cafe', 'Restaurant', 'Steak House', 'Pizza House', 'Diner', 'Eatery', 'Joint', 'Canteen', 'BBQ', 'Chophouse', 'Bar', 'Bistro', 'Sandwiches', 'Burgers', 'Pizza', 'BrewHouse', 'Tacos', ' Super Burritos', 'Bar & Grill', 'Juicery', 'Grill', 'Breakfast', 'Dinner', 'Lunch', 'Brunch'];

const foodType = ['Italian', 'American', 'Indian','Japanese', 'BBQ', 'Mexican', 'Hawaiian'];

const months = ['11', '08', '09', '07', '10', '06']

const days = [ '01', '02','03','04', '05', '06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30']

const year = '2020'

const timeHours = ['13','14','15','16','17','18','19','20','21','22','23','24']

const timeMinutes = ['00','15','30','45']

const dayNight = ['AM', 'PM']

const dataGen = async () => {
  const createRestaurantReservationsTable = async () => {
    writer.pipe(fs.createWriteStream('restaurantReservations6.csv'));
    for (let i = 0; i < 5000000; i++) {
      writer.write({
        restaraunt_id: faker.random.number({min:1, max: 35000000}),
        user_id: faker.random.number({min:1, max: 50000000}),
        restaraunt_name: `${faker.name.firstName()}'s ${restaurantEnding[Math.floor(Math.random() * 25)]}`,
        restaraunt_address: faker.address.streetAddress(),
        reservation_id: faker.random.number({min:1, max: 10000000}),
        booking_date: `${year}-${months[Math.floor(Math.random() * 6)]}-${days[Math.floor(Math.random() * 30)]}`,
        food_type: foodType[Math.floor(Math.random() * 7)],
        time_slot: `${timeHours[Math.floor(Math.random() * 12)]}:${timeMinutes[Math.floor(Math.random() * 4)]} ${dayNight[Math.floor(Math.random() * 2)]}`
      });
    }
    writer.end();
    console.log('generated restaurant reservations csv');
  }
  await createRestaurantReservationsTable();
}

const dataGen2 = async () => {
  const createReservationByUser = async () => {
    writer2.pipe(fs.createWriteStream('reservationByUser6.csv'));
    for (let i = 0; i < 5000000; i++) {
      let cap = faker.random.number({min:2, max: 12})
      writer2.write({
        restaraunt_id: faker.random.number({min:1, max: 35000000}),
        reservation_id: faker.random.number({min:1, max: 100000000}),
        date: `${year}-${months[Math.floor(Math.random() * 6)]}-${days[Math.floor(Math.random() * 30)]}`,
        time: `${timeHours[Math.floor(Math.random() * 12)]}:${timeMinutes[Math.floor(Math.random() * 4)]}:00`,
        user_id: faker.random.number({min:1, max: 50000000}),
        first_name: faker.name.firstName(),
        last_name: faker.name.lastName(),
        phone_number: faker.phone.phoneNumberFormat(),
        email: faker.internet.email(),
        party_size: cap,
      });
    }
    writer.end();
    console.log('generated reservation_by_user csv');
  }
  await createReservationByUser();
}

const dataGen3 = async () => {
  const createRestarauntTable = async () => {
    writer3.pipe(fs.createWriteStream('restarauntInfo4.csv'));
    for (let i = 0; i < 5000000; i++) {
      writer3.write({
        restaraunt_id: faker.random.number({min:1, max: 35000000}),
        restaraunt_name: `${faker.name.firstName()}'s ${restaurantEnding[Math.floor(Math.random() * 25)]}`,
        restaraunt_address: faker.address.streetAddress(),
        food_type: foodType[Math.floor(Math.random() * 7)],
      });
    }
    writer.end();
    console.log('generated restaraunt csv');
  }
  await createRestarauntTable();
}

const dataGen4 = async () => {
  const createUser = async () => {
    writer4.pipe(fs.createWriteStream('users6.csv'));
    for (let i = 0; i < 5000000; i++) {
      let cap = faker.random.number({min:2, max: 12})
      writer4.write({
        user_id: faker.random.number({min:1, max: 50000000}),
        first_name: faker.name.firstName(),
        last_name: faker.name.lastName(),
        phone_number: faker.phone.phoneNumberFormat(),
        email: faker.internet.email(),
        party_size: cap,
      });
    }
    writer.end();
    console.log('generated user csv');
  }
  await createUser();
}
//dataGen();
//dataGen2();
//dataGen3();
dataGen4();