
# bookings-service
This is a feature to see available times for selected dates and number of guests

## Related Projects

  - https://github.com/TKOut-HRSF130/popular-dishes-service
  - https://github.com/TKOut-HRSF130/photos-carousel-service
  - https://github.com/TKOut-HRSF130/bookings-service
  - https://github.com/TKOut-HRSF130/reviews-service

## Table of Contents

1. [Usage](#Usage)
1. [Requirements](#requirements)
1. [Development](#development)

## Usage

> Some usage instructions

## Requirements

An `nvmrc` file is included if using [nvm](https://github.com/creationix/nvm).

- Node 6.13.0
- etc

## Development
## Server API

### Get restaurant info
  * GET `/api/restaraunt/:restaurantId`

**Path Parameters:**
  * `id` restaurant id

**Success Status Code:** `200`

**Returns:** JSON

```json
    {
      "restaraunt_id": "Number",
      "restaraunt_name": "String",
      "restaraunt_address":"String",
      "food_type": "String"
    }
```

### Add reservation
  * POST `/api/:restaurantId/bookings/:date`

**Success Status Code:** `201`

**Request Body**: Expects JSON with the following keys.

```json
    {
      "restaurant_id": "Number",
      "date": "String",
      "name": "String",
      "phone_number": "String",
      "first_name": "String",
      "last_name": "String",
      "email": "String",
      "time": "String",
      "party_size: "Number"
    }
```


### Update reservation
  * PUT `/api/:restaurantId/bookings/:date`

**Path Parameters:**
  * `id` restaurant id
    * `date` utf date

**Success Status Code:** `204`

**Request Body**: Expects JSON with any of the following keys (include only keys to be updated)

```json
   {
       "restaurantId": "Number",
      "name": "String",
      "phone_number": "String",
      "first_name": "String",
      "last_name": "String",
      "email": "String",
      "time": "String",
      "party_size: "Number"
    }
```

### Delete reservation
  * DELETE `/api/:restaurantId/bookings/:date/cancel/:time`

**Path Parameters:**
  * `id` restaurant id
  * `date` utf date
  * `time` time of cancellation
**Success Status Code:** `204`

### Installing Dependencies

From within the root directory:

```sh
npm install -g webpack
npm install
```



