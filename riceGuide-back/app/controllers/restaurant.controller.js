const db = require("../models");
const Restaurant = db.restaurant;

exports.create = async (req, res) => {
  const restaurantToAdd = req.body.restaurant;

  try {
    const existingItem = await Restaurant.findOne({
      name: restaurantToAdd.name,
      address: restaurantToAdd.address,
    });

    if (existingItem) {
      res.status(409).send({ message: "Restaurant already exists" });
    } else {
      const newRestaurant = new Restaurant({
        name: restaurantToAdd.name,
        address: restaurantToAdd.address,
        site: restaurantToAdd.site,
        img_url: restaurantToAdd.img_url,
        price: restaurantToAdd.price,
        nbLike: restaurantToAdd.nbLike,
        nbDislike: restaurantToAdd.nbDislike,
        famous_product_tag: restaurantToAdd.famous_product_tag,
      });

      const savedRestaurant = await newRestaurant.save();
      res.status(201).send(savedRestaurant);
    }
  } catch (err) {
    res.status(500).send({
      message: err.message || "Error while saving restaurant",
    });
  }
};

exports.updateRestaurantById = async (req, res) => {
  const id = req.params.id;
  const updatedData = req.body;

  try {
    const existingRestaurant = await Restaurant.findById({
      _id: id,
    });

    if (!existingRestaurant) {
      return res.status(404).send({ message: "Restaurant not found" });
    }

    // Update specific fields based on the data sent in the request
    for (const [key, value] of Object.entries(updatedData)) {
      if (value !== undefined) {
        existingRestaurant[key] = value;
      }
    }

    const updatedRestaurant = await existingRestaurant.save();

    res.send(updatedRestaurant);
  } catch (err) {
    res.status(500).send({
      message: err.message || "Error while updating restaurant",
    });
  }
};

exports.findAll = (req, res) => {
  Restaurant.find()
    .populate("famous_product_tag", "name") // Populate the famous_product_tag field with tag names
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while finding restaurants.",
      });
    });
};

exports.deleteAll = (req, res) => {
  Restaurant.deleteMany({})
    .then((data) => {
      res.send({
        message: `${data.deletedCount} Restaurants were deleted successfully!`,
      });
    })
    .catch((err) => {
      res.status(500).send({
        message: err.message || "Some error occurred while removing all words.",
      });
    });
};
