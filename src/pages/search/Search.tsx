import BoxSearch from '../../components/boxSearch/BoxSearch'
import CardResto from '../../components/cardResto/CardResto'
import './search.css'
import {Dispatch, SetStateAction, useEffect, useState} from 'react'
import RestaurantService from '../../services/restaurant.service'
;('../../services/restaurant.service')
export interface SearchProps {
  searchValue: any
  setSearchValue: Dispatch<SetStateAction<any>>
}

export default function Search({searchValue, setSearchValue}: SearchProps) {
  const [listResto, setListResto] = useState([])
  const [listRestoFiltered, setListRestoFiltered] = useState([])

  useEffect(() => {
    const fetchResto = async () => {
      const reponse = await RestaurantService.getAllRestaurant()
      setListResto(reponse)
    }
    fetchResto()
  }, [])
  useEffect(() => {
    const newList = listResto.filter((e: any) => {
      const res =
        e.address.includes(searchValue.area) &&
        e.famous_product_tag
          .map((element: any) => element.name)
          .some((element: any) => element.includes(searchValue.cuisine)) &&
        e.name.includes(searchValue.restaurant)
      return res
    })
    setListRestoFiltered(newList)
  }, [searchValue, listResto])

  return (
    <div className='search'>
      <BoxSearch searchValue={searchValue} setSearchValue={setSearchValue} />

      <div className='listResto'>
        {!!listRestoFiltered &&
          listRestoFiltered.map((ele: any, i: any) => {
            return <CardResto key={`resto_${i}`} item={ele} />
          })}
      </div>
    </div>
  )
}
