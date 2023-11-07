import instance from "../helpers/axios.instance";

const getAllItem = async () => {
  const response = await instance.get(`/api/items`);
  return response.data;
};

const ItemService = {
  getAllItem,
};

export default ItemService;
