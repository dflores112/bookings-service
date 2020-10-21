DROP DATABASE IF EXISTS bookings_service100;

CREATE DATABASE bookings_service100;

\c bookings_service100;

CREATE TABLE restaraunts (
  restaraunt_id SERIAL PRIMARY KEY,
  restaraunt_name VARCHAR(50) NOT  NULL,
  restaraunt_address VARCHAR(50) NOT NULL,
  food_type VARCHAR(30) NOT NULL
);

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  phone_number VARCHAR(15) NOT NULL,
  email VARCHAR(40) NOT NULL,
  party_size SMALLINT NOT NULL
);

CREATE TABLE reservation_times (
  times_id SERIAL PRIMARY KEY,
  time_slot TIME,
  booking_date DATE NOT NULL,
  restaraunt_id INT REFERENCES restaraunts(restaraunt_id),
  user_id INT REFERENCES users(user_id)
);

COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/restaurantInfo.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/restaurantInfo1.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/restaurantInfo2.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/restaurantInfo3.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/restaurantInfo4.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/restaurantInfo5.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/restaurantInfo6.csv' DELIMITER ',' CSV HEADER;

COPY users (first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/userInfo1.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/userInfo2.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/userInfo3.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/userInfo4.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/userInfo5.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/userInfo6.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/userInfo7.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/userInfo9.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/userInfo10.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/userInfo11.csv' DELIMITER ',' CSV HEADER;

COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo1.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo2.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo3.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo4.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo5.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo6.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo7.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo8.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo9.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo10.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo11.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo12.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo13.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo14.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo15.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo16.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date, restaraunt_id, user_id) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/reservationInfo17.csv' DELIMITER ',' CSV HEADER;
