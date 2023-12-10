module.exports = (app) => {
  const users = require("../controllers/user.controller");

  const router = require("express").Router();

  router.put("/:id", users.updateUserById);
  router.post("/login", users.login);

  router.post("/register", users.user_register);

  router.delete("/", users.deleteAll);

  app.use("/api/users", router);
};
