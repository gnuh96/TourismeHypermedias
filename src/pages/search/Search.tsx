import BoxSearch from '../../components/boxSearch/BoxSearch'
import CardResto from '../../components/cardResto/CardResto'
import './search.css'
import {useEffect, useState} from 'react'
import ItemService from '../../services/item.service'
export interface SearchProps {}

export default function Search() {
  const [listResto, setListResto] = useState([])
  useEffect(() => {
    const fetchResto = async () => {
      const reponse = await ItemService.getAllItemByClass('Restaurant')
      setListResto(reponse)
    }
    fetchResto()
  }, [])
  return (
    <div className='search'>
      <BoxSearch />

      <div className='listResto'>
        {!!listResto &&
          listResto.map((ele: any, i: any) => {
            return <CardResto key={`resto_${i}`} item={ele} />
          })}
      </div>
    </div>
  )
}
