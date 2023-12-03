import {Outlet} from 'react-router-dom'
import './css/auth.css'
import AppBarCustom from '../components/appBarCustom/AppBarCustom'
import packageJson from '../../package.json'
import {useTranslation} from 'react-i18next'

export default function Auth() {
  const {t} = useTranslation('home')
  return (
    <div className='AuthContainer'>
      <AppBarCustom />
      <div className='FormContainer'>
        <div className='FormWrapper'>
          <Outlet />
        </div>
      </div>
      <div className='footerFixed'>
        <span className='--goldMedium'>{t('footerCaption')}</span>
        <span className='appVersion --goldMedium'>{`V ${
          packageJson?.version || '0.0.0'
        }`}</span>
      </div>
    </div>
  )
}
