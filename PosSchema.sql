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
  booking_date DATE NOT NULL
);

COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/home/ubuntu/restaurantInfo1.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/home/ubuntu/restaurantInfo2.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/home/ubuntu/restaurantInfo3.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/home/ubuntu/restaurantInfo4.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/home/ubuntu/restaurantInfo5.csv' DELIMITER ',' CSV HEADER;
COPY restaraunts (restaraunt_name, restaraunt_address, food_type) FROM '/home/ubuntu/restaurantInfo6.csv' DELIMITER ',' CSV HEADER;

COPY users (first_name, last_name, phone_number, email, party_size) FROM '/home/ubuntu/userInfo1.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/home/ubuntu/userInfo2.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/home/ubuntu/userInfo3.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/home/ubuntu/userInfo4.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/home/ubuntu/userInfo5.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/home/ubuntu/userInfo6.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/home/ubuntu/userInfo7.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/home/ubuntu/userInfo9.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/home/ubuntu/userInfo10.csv' DELIMITER ',' CSV HEADER;
COPY users (first_name, last_name, phone_number, email, party_size) FROM '/home/ubuntu/userInfo11.csv' DELIMITER ',' CSV HEADER;

COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo1.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo2.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo3.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo4.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo5.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo6.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo7.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo8.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo9.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo10.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo11.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo12.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo13.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo14.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo15.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo16.csv' DELIMITER ',' CSV HEADER;
COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/reservationInfo17.csv' DELIMITER ',' CSV HEADER;

-- COPY reservation_times (time_slot, booking_date) FROM '/home/ubuntu/foreignKey.csv' DELIMITER ',' CSV HEADER;