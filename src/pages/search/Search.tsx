import BoxSearch from '../../components/boxSearch/BoxSearch'
import CardResto from '../../components/cardResto/CardResto'
import './search.css'
import {Dispatch, SetStateAction, useEffect, useState} from 'react'
import RestaurantService from '../../services/restaurant.service'
import StorageService from '../../services/storage.service'
import {useTranslation} from 'react-i18next'
;('../../services/restaurant.service')
export interface SearchProps {
  searchValue: any
  setSearchValue: Dispatch<SetStateAction<any>>
}

export default function Search({searchValue, setSearchValue}: SearchProps) {
  const [listResto, setListResto] = useState([])
  const [listRestoFiltered, setListRestoFiltered] = useState([])
  const userAccess = StorageService.getUserAccess()
  const [listRestoFavoris, setListRestoFavoris] = useState(
    userAccess?.favoris || [],
  )
  const userId = userAccess?.id
  const [isShowFavoris, setIsShowFavoris] = useState(false)
  const {t} = useTranslation('search')

  useEffect(() => {
    const fetchResto = async () => {
      const reponse = await RestaurantService.getAllRestaurant()
      setListResto(reponse)
    }
    fetchResto()
  }, [])

  useEffect(() => {
    const listFavori = listResto.filter((ele: any) =>
      listRestoFavoris.includes(ele.id),
    )
    const newList = (isShowFavoris ? listFavori : listResto).filter(
      (e: any) => {
        const res =
          e.address.includes(searchValue.area) &&
          e.famous_product_tag
            .map((element: any) => element.name)
            .some((element: any) => element.includes(searchValue.cuisine)) &&
          e.name.includes(searchValue.restaurant)
        return res
      },
    )
    setListRestoFiltered(newList)
  }, [searchValue, listResto, isShowFavoris, listRestoFavoris])

  const handleClickShow = () => {
    setIsShowFavoris(!isShowFavoris)
  }
  return (
    <div className='search'>
      <BoxSearch searchValue={searchValue} setSearchValue={setSearchValue} />

      <div className='buttonSearch'>
        <button onClick={handleClickShow}>
          {isShowFavoris ? t('nonshow') : t('show')}
        </button>
      </div>

      <div className='listResto'>
        {!!listRestoFiltered &&
          listRestoFiltered.map((ele: any, i: any) => {
            return (
              <CardResto
                key={`resto_${i}`}
                item={ele}
                listRestoFavoris={listRestoFavoris}
                setListRestoFavoris={setListRestoFavoris}
                userAccess={userAccess}
                userId={userId}
              />
            )
          })}
      </div>
    </div>
  )
}
