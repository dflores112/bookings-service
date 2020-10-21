DROP KEYSPACE toptable

CREATE KEYSPACE toptable WITH replication =
  {'class' : 'NetworkTopologyStrategy', 'replication_factor' : 1};
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
COPY reservations_by_restaraunt (restaraunt_id, user_id, restaraunt_name, restaraunt_address, reservation_id, booking_date, food_type,time_slot) FROM '/Users/danielflores/Desktop/HR130/Top-Table/bookings-service/database/seeding/cassandra/restaurantReservations.csv' CSV HEADER;



