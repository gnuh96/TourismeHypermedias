import {useTranslation} from 'react-i18next'
import './home.css'
import {Typography} from '@mui/material'
import BoxSearch from '../../components/boxSearch/BoxSearch'
import {useState} from 'react'
import Search from '../search/Search'

export interface HomeProps {}

export default function Home() {
  const {t} = useTranslation('home')
  const [isSearchVisbile, setIsSearchVisible] = useState(false)
  const [searchValue, setSearchValue] = useState<any>({
    area: '',
    cuisine: '',
    restaurant: '',
  })

  const onClickButton = () => {
    setIsSearchVisible(true)
  }

  return (
    <>
      {!isSearchVisbile ? (
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
            <BoxSearch
              onClickButton={onClickButton}
              searchValue={searchValue}
              setSearchValue={setSearchValue}
            />
          </div>
        </div>
      ) : (
        <Search searchValue={searchValue} setSearchValue={setSearchValue} />
      )}
    </>
  )
}
