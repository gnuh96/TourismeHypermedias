import instance from '../helpers/axios.instance'

const getAllRestaurant = async () => {
  const response = await instance.get(`/restaurants`)
  return response.data
}

const updateRestaurantLikeById = async (body: any, id: string) => {
  try {
    const response = await instance.put(`/restaurants/${id}`, body)
    return response.data
  } catch (error) {
    console.error('Error updating item:', error)
    throw error
  }
}

const RestaurantService = {
  getAllRestaurant,
  updateRestaurantLikeById,
}

export default RestaurantService
