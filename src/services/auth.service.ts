import instance from '../helpers/axios.instance'

import StorageService from './storage.service'
import {UserType, RegisterBodyType, LoginBodyType} from '../types'

const register = async (data: RegisterBodyType): Promise<UserType> => {
  const response = await instance.post('/users/register', data)
  return response.data
}

const login = async (data: LoginBodyType) => {
  const response = await instance.post('/users/login', data)
  return response.data.user_data
}

const logout = (): void => {
  clearUser()
}

const AuthService = {
  register,
  login,
  logout,
}

const clearUser = () => {
  StorageService.removeUser()
}

export default AuthService
