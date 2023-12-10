import * as yup from 'yup'
export interface UserAccessType {
  email: string
  favoris: string[]
  id: string
}

export interface LoginFormType {
  email: string
  password: string
}

export interface RegisterFormType {
  email: string
  password: string
  checkPassword: string
}

export const loginSchema = yup.object().shape({
  email: yup.string().email().required(),
  password: yup.string().required(),
})

export const registerSchema = yup.object().shape({
  email: yup.string().email().required(),
  password: yup.string().required(),
  checkPassword: yup
    .string()
    .oneOf([yup.ref('password')])
    .required(),
})

export interface UserType {
  id: string
  email: string
  password: string
  favoris_restaurant: string[]
}

export interface RegisterBodyType {
  email: string
  password: string
}

export interface LoginBodyType {
  email: string
  password: string
}
