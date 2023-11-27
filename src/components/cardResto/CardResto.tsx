import {useEffect, useState} from 'react'
import Icon from '../icon/Icon'
import './cardResto.css'
import MediaService from '../../services/media.service'
import {IconButton} from '@mui/material'
import ItemService from '../../services/item.service'

export interface CardRestoProps {
  item: any
}

export default function CardResto({item}: CardRestoProps) {
  const [imgUrl, setImgUrl] = useState('')
  const [nbLike, setNbLike] = useState(item.nblike)

  useEffect(() => {
    const fetchImg = async () => {
      const data = await MediaService.getMediaById(item.imageUrlId)
      setImgUrl(data)
    }
    fetchImg()
  }, [item])

  const handleClickLike = () => {
    let newLike = nbLike
    setNbLike(newLike++)
  }

  //   useEffect(() => {
  //     const updateLike = async () => {
  //       const reponse = await ItemService.updateItemLikeById(nbLike, item.id)
  //       console.log(reponse)
  //     }
  //     updateLike()
  //   }, [nbLike])

  return (
    <div className='cardResto'>
      <div className='cardRestoContent'>
        <div className='cardRestoImage'>
          <img src={imgUrl} />
        </div>
        <div className='cardRestoContainer'>
          <div className='cardRestoInfo'>
            <div className='cardRestoName'>
              <span
                style={{color: '#121212', fontSize: '18px', fontWeight: 700}}>
                {item.name}
              </span>
            </div>
            <div className='cardRestoTag'>
              <span
                style={{
                  color: 'rgba(0, 0, 0, 0.60)',
                }}>
                {item.tags.join(' / ')}
              </span>
            </div>
            <div className='cardRestoPrice'>
              <Icon type='price_icon' size='2rem' />
              <span
                style={{
                  color: 'rgba(0, 0, 0, 0.60)',
                  paddingLeft: '10px',
                }}>{`Prix moyen : ${item.price}`}</span>
            </div>
          </div>
          <div className='cardRestoGroupLike'>
            <div className='cardRestoLike'>
              <div className='nbLike'>
                <IconButton onClick={handleClickLike}>
                  <Icon type='like_icon' size='1.5rem' />
                </IconButton>
                <span>{nbLike}</span>
              </div>
              <div className='nbLike'>
                <IconButton>
                  <Icon type='dislike_icon' size='1.5rem' />
                </IconButton>
                <span>{item.nbdislike}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}
