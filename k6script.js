import { sleep } from "k6";
import http from "k6/http";

export const options = {
  stages: [
    { duration: "1s", target: 100 },
    { duration: "5s", target: 300 },
    { duration: "32s", target: 700 },
    { duration: "1m", target: 1000 },
  ],
  ext: {
    loadimpact: {
      distribution: {
        "amazon:us:ashburn": { loadZone: "amazon:us:ashburn", percent: 100 },
      },
    },
  },
};

export default function main() {
  let response;
  const restaurant = Math.floor(Math.random() * 30000000) + 25000000;
  response = http.get(
    `http://localhost:3000/api/bookings/restaurantName/${restaurant}`
  );

  sleep(.1)
}