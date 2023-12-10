import {useEffect, useState} from 'react'
import {yupResolver} from '@hookform/resolvers/yup'
import {Link} from 'react-router-dom'
import {useForm, SubmitHandler} from 'react-hook-form'
import {useTranslation} from 'react-i18next'
import './styles.css'

import Input from '../../../components/inputInApp/InputInApp'
import ButtonConfirmation from '../../../components/buttonConfirmation'
import ConfirmationInscription from '../confirmationInscription'
import CustomSnackbar from '../../../components/customSnackbar/CustomSnackbar'

import AuthService from '../../../services/auth.service'
import {
  RegisterBodyType,
  RegisterFormType,
  registerSchema,
} from '../../../types'

const Register = () => {
  const [showConfirmation, setShowConfirmation] = useState<boolean>(false)
  const [openErrorSnackbar, setOpenErrorSnackbar] = useState(false)
  const [errorType, setErrorType] = useState(null)

  const {
    register,
    handleSubmit,
    formState: {errors, isDirty},
    watch,
  } = useForm<RegisterFormType>({
    resolver: yupResolver(registerSchema),
  })

  const {t} = useTranslation('auth')

  const onSubmit: SubmitHandler<RegisterFormType> = async (
    data: RegisterFormType,
  ) => {
    try {
      const registerBody: RegisterBodyType = {
        email: data.email.toLowerCase(),
        password: data.password,
      }
      const res = await AuthService.register(registerBody)
      setShowConfirmation(true)
    } catch (error: any) {
      if (error.response.data.error.code) {
        setErrorType(error.response.data.error.code)
        setOpenErrorSnackbar(true)
      }
    }
  }

  const isFormFilled = () => {
    const formValues = watch()
    return Object.values(formValues).every(value => value !== '')
  }

  return (
    <div className='registerContainer'>
      <CustomSnackbar
        openSnackbar={openErrorSnackbar}
        type='error'
        message={t(`${errorType}`)}
        setOpenSnackbar={setOpenErrorSnackbar}
      />
      {showConfirmation ? (
        <>
          <ConfirmationInscription message={t('register_success_msg')} />
        </>
      ) : (
        <>
          <h1>{t('login_title')}</h1>
          <form onSubmit={handleSubmit(onSubmit)} className='RegisterForm'>
            <Input
              color='F7F9FF'
              type='text'
              placeholder={`${t('email')}`}
              {...register('email')}
              error={!!errors.email ? t('email_valid') : undefined}
            />
            <Input
              color='F7F9FF'
              type='password'
              placeholder={`${t('password')}`}
              {...register('password')}
              error={!!errors.password ? t('password_valid') : undefined}
            />
            <Input
              color='F7F9FF'
              type='password'
              placeholder={`${t('check_password')}`}
              {...register('checkPassword')}
              error={
                !!errors.checkPassword ? t('check_password_valid') : undefined
              }
            />
            <ButtonConfirmation
              disable={!isDirty || !isFormFilled()}
              text={t('register')}
            />
          </form>

          <div className='NavLink'>
            <div>{t('have_account')}</div>
            <Link to='/auth/login'>{t('go_connect')}</Link>
          </div>
        </>
      )}
    </div>
  )
}

export default Register
