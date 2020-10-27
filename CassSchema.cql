DROP KEYSPACE IF EXISTS toptable;

CREATE KEYSPACE toptable WITH replication =
  {'class' : 'SimpleStrategy', 'replication_factor' : 1};

USE toptable;

CREATE TABLE reservations_by_restaraunt(
  restaraunt_id int,
  user_id int,
  restaraunt_name text,
  restaraunt_address text,
  reservation_id int,
  booking_date date,
  food_type text,
  time_slot text,
  PRIMARY KEY (restaraunt_id, reservation_id)
);
CREATE TABLE reservation_by_user(
  restaraunt_id int,
  reservation_id int,
  date text,
  time text,
  user_id int,
  first_name text,
  last_name text,
  phone_number text,
  email text,
  party_size int,
  PRIMARY KEY (user_id, date,reservation_id)
);
CREATE TABLE restaraunt(
  restaraunt_id int,
  restaraunt_name text,
  restaraunt_address text,
  food_type text,
  PRIMARY KEY (restaraunt_id)
);
CREATE TABLE user(
  user_id int,
  first_name text,
  last_name text,
  phone_number text,
  email text,
  party_size int,
  PRIMARY KEY (user_id)
);

COPY reservations_by_restaraunt (restaraunt_id, user_id, restaraunt_name, restaraunt_address, reservation_id, booking_date, food_type, time_slot) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restaurantReservations1.csv' WITH HEADER=TRUE;
COPY reservations_by_restaraunt (restaraunt_id, user_id, restaraunt_name, restaraunt_address, reservation_id, booking_date, food_type, time_slot) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restaurantReservations2.csv' WITH HEADER=TRUE;
COPY reservations_by_restaraunt (restaraunt_id, user_id, restaraunt_name, restaraunt_address, reservation_id, booking_date, food_type, time_slot) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restaurantReservations3.csv' WITH HEADER=TRUE;
COPY reservations_by_restaraunt (restaraunt_id, user_id, restaraunt_name, restaraunt_address, reservation_id, booking_date, food_type, time_slot) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restaurantReservations4.csv' WITH HEADER=TRUE;
COPY reservations_by_restaraunt (restaraunt_id, user_id, restaraunt_name, restaraunt_address, reservation_id, booking_date, food_type, time_slot) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restaurantReservations5.csv' WITH HEADER=TRUE;
COPY reservations_by_restaraunt (restaraunt_id, user_id, restaraunt_name, restaraunt_address, reservation_id, booking_date, food_type, time_slot) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restaurantReservations6.csv' WITH HEADER=TRUE;

COPY reservation_by_user (restaraunt_id, reservation_id, date, time,user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/reservationByUser1.csv' WITH HEADER=TRUE;
COPY reservation_by_user (restaraunt_id, reservation_id, date, time,user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/reservationByUser2.csv' WITH HEADER=TRUE;
COPY reservation_by_user (restaraunt_id, reservation_id, date, time,user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/reservationByUser3.csv' WITH HEADER=TRUE;
COPY reservation_by_user (restaraunt_id, reservation_id, date, time,user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/reservationByUser4.csv' WITH HEADER=TRUE;
COPY reservation_by_user (restaraunt_id, reservation_id, date, time,user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/reservationByUser5.csv' WITH HEADER=TRUE;
COPY reservation_by_user (restaraunt_id, reservation_id, date, time,user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/reservationByUser6.csv' WITH HEADER=TRUE;


COPY restaraunt (restaraunt_id, restaraunt_name, restaraunt_address,food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restarauntInfo1.csv' WITH HEADER=TRUE;
COPY restaraunt (restaraunt_id, restaraunt_name, restaraunt_address,food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restarauntInfo2.csv' WITH HEADER=TRUE;
COPY restaraunt (restaraunt_id, restaraunt_name, restaraunt_address,food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restarauntInfo3.csv' WITH HEADER=TRUE;
COPY restaraunt (restaraunt_id, restaraunt_name, restaraunt_address,food_type) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restarauntInfo4.csv' WITH HEADER=TRUE;

COPY user (user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/users1.csv' WITH HEADER=TRUE;
COPY user (user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/users2.csv' WITH HEADER=TRUE;
COPY user (user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/users3.csv' WITH HEADER=TRUE;
COPY user (user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/users4.csv' WITH HEADER=TRUE;
COPY user (user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/users5.csv' WITH HEADER=TRUE;
COPY user (user_id, first_name, last_name, phone_number, email, party_size) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/users6.csv' WITH HEADER=TRUE;


