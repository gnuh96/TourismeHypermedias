module.exports = (mongoose) => {
  const schema = mongoose.Schema(
    {
      name: String,
      address: String,
      site: String,
      price: String,
      img_url: String,
      nbLike: Number,
      nbDislike: Number,
      famous_product_tag: [
        { type: mongoose.Schema.Types.ObjectId, ref: "tag" },
      ],
    },
    { timestamps: true }
  );

  schema.method("toJSON", function () {
    const { __v, _id, ...object } = this.toObject();
    object.id = _id;
    return object;
  });

  const Restaurant = mongoose.model("restaurant", schema);
  return Restaurant;
};
