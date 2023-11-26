import {useTranslation} from 'react-i18next'
import './home.css'
import {Typography} from '@mui/material'
import BoxSearch from '../../components/boxSearch/BoxSearch'

export interface HomeProps {}

export default function Home() {
  const {t} = useTranslation('home')
  return (
    <div className='home'>
      <div className='homeContainer'>
        <Typography
          sx={{
            color: '#FFF',
            textAlign: 'center',
            fontWeight: 550,
            fontSize: 40,
          }}>
          {t('title_app')}
        </Typography>
        <BoxSearch />
      </div>
    </div>
  )
}
