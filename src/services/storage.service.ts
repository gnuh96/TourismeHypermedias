import {UserAccessType} from '../types/user.type'

const getUserAccess = (): UserAccessType | null => {
  const userString = localStorage.getItem('user-access')
  if (!userString) {
    return null
  }
  return JSON.parse(userString)
}

const setUserAccess = (access: UserAccessType): void => {
  localStorage.setItem('user-access', JSON.stringify(access))
}

const removeUser = (): void => {
  localStorage.removeItem('user-access')
}

const StorageService = {
  getUserAccess,
  setUserAccess,
  removeUser,
}

export default StorageService
