DROP DATABASE IF EXISTS toptable;

CREATE DATABASE toptable;

\c toptable;

CREATE TABLE restaraunts (
  restaraunt_id SERIAL PRIMARY KEY,
  restaraunt_name VARCHAR(50) NOT  NULL,
  restaraunt_address VARCHAR NOT NULL,
  food_type VARCHAR(50) NOT NULL,
)

CREATE TABLE reservation_times (
  times_id SERIAL PRIMARY KEY,
  time_slot TIME,
  booking_date DATE NOT NULL,
  restaraunt_id FOREIGN KEY REFERENCES restaraunts(restaraunt_id)
  user_id INT FOREIGN KEY REFERENCES users(user_id)
)

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  phone_number SMALLINT NOT NULL,
  email VARCHAR(20) NOT NULL,
  party_size SMALLINT NOT NULL
)

-- psql -u owner toptable < PosSchema.sql