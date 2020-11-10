import { sleep } from "k6";
import http from "k6/http";

export const options = {
  stages: [
    { duration: "1s", target: 50 },
    { duration: "15s", target: 250 },
    { duration: "30s", target: 500 },
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
  const restaurant = Math.floor(Math.random() * 30000000) + 1;
  response = http.get(
    `http://3.134.89.82/api/bookings/restaurantName/${restaurant}`
  );

  sleep(.1)
}