module.exports = (mongoose) => {
  const schema = mongoose.Schema(
    {
      email: String,
      password: String,
      favoris_restaurant: [
        { type: mongoose.Schema.Types.ObjectId, ref: "restaurant" },
      ],
    },
    { timestamps: true }
  );

  schema.method("toJSON", function () {
    const { __v, _id, ...object } = this.toObject();
    object.id = _id;
    return object;
  });

  const Restaurant = mongoose.model("user", schema);
  return Restaurant;
};
