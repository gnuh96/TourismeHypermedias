import {SubmitHandler, useForm} from 'react-hook-form'
import './BoxSearch.css'
import {useTranslation} from 'react-i18next'
import Input from '../inputInApp/InputInApp'

interface SearchFormData {
  area: string
  cuisine: string
  restaurant: string
}

export default function BoxSearch() {
  const {t} = useTranslation('boxSearch')
  const {
    register,
    handleSubmit,
    formState: {errors},
  } = useForm<SearchFormData>()

  const onSubmit: SubmitHandler<SearchFormData> = data => {
    // Implement your search logic here
    console.log('Search with the following parameters:', data)
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
