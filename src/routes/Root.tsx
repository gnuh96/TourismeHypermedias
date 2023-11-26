import {Outlet} from 'react-router-dom'
import AppBarCustom from '../components/appBarCustom/AppBarCustom'
import './css/Root.css'
import packageJson from '../../package.json'
import {useTranslation} from 'react-i18next'

export default function Root() {
  const {t} = useTranslation('home')
  return (
    <div className='rootContainer'>
      <AppBarCustom />
      <div className='outletContainer'>
        <Outlet />
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
