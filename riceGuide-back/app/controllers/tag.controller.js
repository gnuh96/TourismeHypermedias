const db = require("../models");
const Tag = db.tag;

exports.create = async (req, res) => {
  const tagToAdd = req.body.tag;

  try {
    const existingItem = await Tag.findOne({
      name: tagToAdd.name,
    });

    if (existingItem) {
      res.status(409).send({ message: "Tag already exists" });
    } else {
      const newTag = new Tag({
        name: tagToAdd.name,
      });

      const savedTag = await newTag.save();
      res.status(201).send(savedTag);
    }
  } catch (err) {
    res.status(500).send({
      message: err.message || "Error while saving tag",
    });
  }
};

exports.findAll = (req, res) => {
  Tag.find()
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      res.status(500).send({
        message: err.message || "Some error occurred while find a word.",
      });
    });
};

// Delete a Document with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Tag.findByIdAndRemove(id, { useFindAndModify: false })
    .then((data) => {
      if (!data) {
        res.status(404).send({
          message: `Cannot delete Tag with id=${id}. Maybe Tag was not found!`,
        });
      } else {
        res.send({
          message: "Tag was deleted successfully!",
        });
      }
    })
    .catch((err) => {
      res.status(500).send({
        message: "Could not delete Tag with id=" + id,
      });
    });
};

exports.deleteAll = (req, res) => {
  Tag.deleteMany({})
    .then((data) => {
      res.send({
        message: `${data.deletedCount} tag were deleted successfully!`,
      });
    })
    .catch((err) => {
      res.status(500).send({
        message: err.message || "Some error occurred while removing all words.",
      });
    });
};
