import {useState} from 'react'
import {useTranslation} from 'react-i18next'
import {useForm, SubmitHandler} from 'react-hook-form'
import {yupResolver} from '@hookform/resolvers/yup'
import {Link, useNavigate} from 'react-router-dom'
import './styles.css'
import {LoginFormType, loginSchema} from '../../../types/user.type'
import AuthService from '../../../services/auth.service'
import StorageService from '../../../services/storage.service'
import CustomSnackbar from '../../../components/customSnackbar/CustomSnackbar'
import Input from '../../../components/inputInApp/InputInApp'
import ButtonConfirmation from '../../../components/buttonConfirmation'

export default function Login() {
  const {t} = useTranslation('auth')
  const navigate = useNavigate()
  const [openErrorSnackbar, setOpenErrorSnackbar] = useState(false)
  const [errorType, setErrorType] = useState(null)
  const {
    register,
    handleSubmit,
    formState: {errors},
  } = useForm<LoginFormType>({
    resolver: yupResolver(loginSchema),
  })

  const onSubmit: SubmitHandler<LoginFormType> = async (
    data: LoginFormType,
  ) => {
    try {
      const loginBody = {
        email: data.email.toLowerCase(),
        password: data.password,
      }

      const user = await AuthService.login(loginBody)
      console.log('0', user)
      if (user) {
        const userAccess = {
          email: user.email,
        }
        console.log('1', userAccess)
        StorageService.setUserAccess(userAccess)
        navigate('/')
      }
    } catch (error: any) {
      console.error(error)
      if (error.code) {
        setErrorType(error.response.data.error_code)
        setOpenErrorSnackbar(true)
      }
    }
  }
  return (
    <div className='loginContainer'>
      <CustomSnackbar
        openSnackbar={openErrorSnackbar}
        type='error'
        message={t(`${errorType}`)}
        setOpenSnackbar={setOpenErrorSnackbar}
      />
      <h1 className='--titleAuthText'>{t('welcome')}</h1>
      <form onSubmit={handleSubmit(onSubmit)} className='LoginForm'>
        <Input
          type='text'
          placeholder={`${t('email')}`}
          {...register('email')}
          error={errors.email ? t('email_valid') : undefined}
        />
        <Input
          type='password'
          placeholder={`${t('password')}`}
          {...register('password')}
          error={errors.password ? t('password_valid') : undefined}
        />
        <ButtonConfirmation text={t('connect')} />
      </form>
      <div className='NavLink'>
        <Link to='/auth/register'>{t('no_account')}</Link>
      </div>
    </div>
  )
}
