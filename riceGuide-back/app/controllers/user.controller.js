const utils = require("../utils/utils");
const db = require("../models");
const send = require("send");
const User = db.user;

exports.user_register = async (req, res) => {
  const userToAdd = req.body;

  try {
    const existingItem = await User.findOne({
      email: userToAdd.email,
    });

    if (existingItem) {
      res.status(409).send({ message: "User already exists" });
    } else {
      const newUser = new User({
        email: userToAdd.email,
        password: utils.encryptPassword(userToAdd.password),
        famous_product_tag: [],
      });

      const savedUser = await newUser.save();
      res.status(201).send(savedUser);
    }
  } catch (err) {
    res.status(500).send({
      message: err.message || "Error while register user",
    });
  }
};

exports.login = async (req, res) => {
  const request_data_user = req.body;

  const email = request_data_user.email;
  const password = utils.encryptPassword(request_data_user.password);

  User.findOne({ $and: [{ email: email }, { password: password }] }).then(
    (user) => {
      console.log("1", user);
      if (!user) {
        console.log("2");
        res.status(500).send({
          success: false,
          message: "User not found",
          error_code: "USER_NOT_FOUND",
        });
      } else {
        res.status(200).send({
          success: true,
          message: "Login successfully",
          user_data: user,
        });
      }
    },
    (error) => {
      console.log(error);
      res.status(500).send({
        success: false,
        message: "Something when wrong",
        error_code: "ERROR_LOGIN",
      });
    }
  );
};

exports.updateUserById = async (req, res) => {
  const id = req.params.id;
  const updatedData = req.body;

  try {
    const existingUser = await User.findById({
      _id: id,
    });

    if (!existingUser) {
      return res.status(404).send({ message: "User not found" });
    }

    // Update specific fields based on the data sent in the request
    for (const [key, value] of Object.entries(updatedData)) {
      if (value !== undefined) {
        existingUser[key] = value;
      }
    }

    const updatedUser = await existingUser.save();

    res.send(updatedUser);
  } catch (err) {
    res.status(500).send({
      message: err.message || "Error while updating user",
    });
  }
};

exports.findAll = (req, res) => {
  User.find()
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
  User.deleteMany({})
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
