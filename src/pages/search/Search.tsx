import BoxSearch from '../../components/boxSearch/BoxSearch'
import CardResto from '../../components/cardResto/CardResto'
import './search.css'
import {Dispatch, SetStateAction, useEffect, useState} from 'react'
import ItemService from '../../services/restaurant.service'
export interface SearchProps {
  searchValue: any
  setSearchValue: Dispatch<SetStateAction<any>>
}

export default function Search({searchValue, setSearchValue}: SearchProps) {
  const [listResto, setListResto] = useState([])
  const [listRestoFiltered, setListRestoFiltered] = useState([])

  useEffect(() => {
    const fetchResto = async () => {
      const reponse = await ItemService.getAllItemByClass('Restaurant')
      setListResto(reponse)
      console.log(reponse)
    }
    fetchResto()
  }, [])
  useEffect(() => {
    const newList = listResto.filter((e: any) => {
      const res =
        e.address.includes(searchValue.area) &&
        e.tags.some((element: any) => element.includes(searchValue.cuisine)) &&
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
