module.exports = (app) => {
  const restaurants = require("../controllers/restaurant.controller.js");

  const router = require("express").Router();

  router.get("/", restaurants.findAll);
  router.post("/", restaurants.create);
  router.put("/:id", restaurants.updateRestaurantById);

  router.delete("/", restaurants.deleteAll);

  app.use("/api/restaurants", router);
};
