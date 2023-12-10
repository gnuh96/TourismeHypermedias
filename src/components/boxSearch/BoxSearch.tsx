import {SubmitHandler, useForm} from 'react-hook-form'
import './BoxSearch.css'
import {useTranslation} from 'react-i18next'
import Input from '../inputInApp/InputInApp'
import {Dispatch, SetStateAction} from 'react'

interface SearchFormData {
  area: string
  cuisine: string
  restaurant: string
}
export interface BoxSearchProps {
  searchValue: any
  setSearchValue: Dispatch<SetStateAction<any>>
  onClickButton?: () => void
}
export default function BoxSearch({
  searchValue,
  setSearchValue,
  onClickButton = () => {},
}: BoxSearchProps) {
  const {t} = useTranslation('boxSearch')
  const {
    register,
    handleSubmit,
    formState: {errors},
  } = useForm<SearchFormData>()

  const onSubmit: SubmitHandler<SearchFormData> = data => {
    setSearchValue(data)
    onClickButton()
  }
  return (
    <form className='boxSearch' onSubmit={handleSubmit(onSubmit)}>
      <div>
        <div style={{display: 'flex'}}>
          <Input
            type='text'
            placeholder={`${t('area')}`}
            {...register('area')}
            isOnRow
          />
          <Input
            type='text'
            placeholder={`${t('cuisine')}`}
            {...register('cuisine')}
            isOnRow
          />
        </div>
        <div style={{padding: '0 21px'}}>
          <Input
            type='text'
            placeholder={`${t('restaurant')}`}
            {...register('restaurant')}
          />
        </div>
      </div>
      <div className='buttonSearch'>
        <button type='submit'>{t('search')}</button>
      </div>
    </form>
  )
}
