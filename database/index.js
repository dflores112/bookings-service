const client = require('./PosGresCred.js')
client.connect(err => {
  if (err) {
    console.error('connection error', err.stack)
  } else {
    console.log('connected')
  }
})

const addReservation = ( data, callback ) => {

  const {time_slot, booking_date, restaraunt_id, user_id} = data;

  client.query(`insert into reservation_times(time_slot, booking_date, restaraunt_id, user_id) VALUES (${time_slot}, ${booking_date}, ${restaraunt_id}, ${user_id})`, (err,data) =>{
    if(err){
      callback(err);
    } else {
      callback();
    }
  });
};
const getRestaurantName = (restarauntId, callback) => {
  client.query(`SELECT restaraunt_name FROM restaraunts WHERE restaraunt_id = ${restarauntId}`, (err,data) =>{
    if (err) {
      callback(err)
    } else {
      callback(null,data.rows)
    }
  })
}

module.exports.addReservation = addReservation;
module.exports.getRestaurantName = getRestaurantName;
