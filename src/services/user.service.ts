import instance from '../helpers/axios.instance'

const getUsers = async (skip: number = 0, limit?: number) => {
  const response = await instance.get('/users', {
    params: {
      filter: {
        skip,
        limit,
      },
    },
  })
  return response.data
}

const UserService = {
  getUsers,
}

export default UserService
