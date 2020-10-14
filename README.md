
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
  * GET `/api/bookings/restaurantName/:restaurantId`

**Path Parameters:**
  * `id` restaurant id

**Success Status Code:** `200`

**Returns:** JSON

```json
    {
      "restaurantsId": "Number",
      "name": "String",
      "address":"String",
      "capacity": "Number"
    }
```

### Add reservation
  * POST `/api/bookings/:restaurantId`

**Success Status Code:** `201`

**Request Body**: Expects JSON with the following keys.

```json
    {
      "restaurantId": "Number",
      "name": "String",
      "phone": "String",
      "firstName": "String",
      "lastName": "String",
      "email": "String",
      "time": "String",
      "seatingPreference": "String"
      "partySize: "Number"
    }
```


### Update reservation
  * PUT `/api/bookings/:restaurantId`

**Path Parameters:**
  * `id` restaurant id

**Success Status Code:** `204`

**Request Body**: Expects JSON with any of the following keys (include only keys to be updated)

```json
   {
      "restaurantId": "Number",
      "name": "String",
      "phone": "String",
      "firstName": "String",
      "lastName": "String",
      "email": "String",
      "time": "String",
      "seatingPreference": "String"
      "partySize: "Number"
    }
```

### Delete reservation
  * DELETE `/api/bookings/:restaurantId`

**Path Parameters:**
  * `id` restaurant id

**Success Status Code:** `204`

### Installing Dependencies

From within the root directory:

```sh
npm install -g webpack
npm install
```



