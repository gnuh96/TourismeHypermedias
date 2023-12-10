module.exports = (app) => {
  const tags = require("../controllers/tag.controller.js");

  const router = require("express").Router();

  router.post("/", tags.create);

  router.get("/", tags.findAll);

  router.delete("/", tags.deleteAll);

  app.use("/api/tags", router);
};
