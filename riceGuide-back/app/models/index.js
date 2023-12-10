const dbConfig = require("../config/db.config.js");

const mongoose = require("mongoose");
mongoose.Promise = global.Promise;

const db = {};
db.mongoose = mongoose;
db.url = dbConfig.url;
db.tag = require("./tag.model.js")(mongoose);
db.restaurant = require("./restaurant.model.js")(mongoose);
db.user = require("./user.model.js")(mongoose);

module.exports = db;
