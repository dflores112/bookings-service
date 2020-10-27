
### Find a restaraunt by ID


bookings_service100=# select * from restaraunts where restaraunt_id = 34000000;
 restaraunt_id | restaraunt_name | restaraunt_address | food_type
---------------+-----------------+--------------------+-----------
      34000000 | Vesta's Eatery  | 37846 Garrett Port | American
(1 row)

Time: 35.290 ms


### Find a reservation by ID


bookings_service100=# select * from reservation_times where times_id = 90000000;
 times_id | time_slot | booking_date
----------+-----------+--------------
 90000000 | 05:00:00  | 2020-07-23
(1 row)

Time: 29.066 ms

### Find a user by ID

bookings_service100=# select * from users where user_id = 45000000;
 user_id  | first_name | last_name | phone_number |        email        | party_size
----------+------------+-----------+--------------+---------------------+------------
 45000000 | William    | Gulgowski | 344-724-8489 | Alvis83@hotmail.com |          9
(1 row)

Time: 39.643 ms

### Delete a reservation By id

bookings_service100=# delete from reservation_times where times_id = 95238457;
DELETE 1
Time: 13.207 ms

bookings_service100=# select * from reservation_times where times_id = 95238457;
 times_id | time_slot | booking_date
----------+-----------+--------------
(0 rows)

Time: 0.551 ms

### Insert a reservation

//Add to reservation time
bookings_service100=# insert into reservation_times(time_slot, booking_date) VALUES ('08:00:00', '2001-01-01');INSERT 0 1
Time: 42.408 ms
//Add to users
bookings_service100=# insert into users(first_name,last_name,phone_number,email,party_size) VALUES ('Daniel', 'Flores', '4159269091', 'daniel@daniel.com', 5);
INSERT 0 1
Time: 32.064 ms

### update a reservation

bookings_service100=# update reservation_times set time_slot = '08:00:00'  where times_id = 95238457;
UPDATE 0
Time: 3.808 ms