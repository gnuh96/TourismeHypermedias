exports.encryptPassword = function (password) {
  var crypto = require("crypto");
  try {
    return crypto.createHash("md5").update(password).digest("hex");
  } catch (error) {
    console.error(error);
  }
};
