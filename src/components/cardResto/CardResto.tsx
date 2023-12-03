import {useEffect, useState} from 'react'
import Icon from '../icon/Icon'
import './cardResto.css'
import {IconButton} from '@mui/material'
import RestaurantService from '../../services/restaurant.service'

export interface CardRestoProps {
  item: any
}

export default function CardResto({item}: CardRestoProps) {
  const [nbLike, setNbLike] = useState(item.nbLike)
  const [nbdisLike, setNbdisLike] = useState(item.nbDislike)

  const handleClickLike = async () => {
    const newLike = nbLike + 1
    setNbLike(newLike)
    await RestaurantService.updateRestaurantLikeById({nbLike: newLike}, item.id)
  }

  const handleClickDisLike = async () => {
    const newLike = nbdisLike + 1
    setNbdisLike(newLike)
    await RestaurantService.updateRestaurantLikeById(
      {nbDislike: newLike},
      item.id,
    )
  }

  return (
    <div className='cardResto'>
      <div className='cardRestoContent'>
        <div className='cardRestoImage'>
          <img src={item.img_url} />
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
                {item.famous_product_tag
                  .map((ele: any) => ele.name)
                  .join(' / ')}
              </span>
            </div>
            <div className='cardRestoTag'>
              <span
                style={{
                  color: 'rgba(0, 0, 0, 0.60)',
                }}>
                {item.address}
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
                <IconButton onClick={handleClickDisLike}>
                  <Icon type='dislike_icon' size='1.5rem' />
                </IconButton>
                <span>{nbdisLike}</span>
              </div>
            </div>
          </div>
        </div>
        <div className='cardRestoSite'>
          <a href={item.site} target='_blank' rel='noopener noreferrer'>
            {item.site}
          </a>
        </div>
      </div>
    </div>
  )
}
