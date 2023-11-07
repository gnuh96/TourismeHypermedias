import instance from '../helpers/axios.instance'

const getAllItem = async () => {
  const response = await instance.get(`http://localhost:8888/omeka-s/api/items`)
  return response.data
}

const ItemService = {
  getAllItem,
}

export default ItemService
