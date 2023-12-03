import instance from '../helpers/axios.instance'

const updateUserById = async (body: any, id: string) => {
  try {
    const response = await instance.put(`/users/${id}`, body)
    return response.data
  } catch (error) {
    console.error('Error updating item:', error)
    throw error
  }
}

const UserService = {
  updateUserById,
}

export default UserService
