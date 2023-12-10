import {useTranslation} from 'react-i18next'
import {useNavigate} from 'react-router-dom'

import ButtonConfirmation from '../../components/buttonConfirmation'

const ConfirmationInscription = ({message}: {message: string}) => {
  const {t} = useTranslation()
  const navigate = useNavigate()
  return (
    <div className='confirmationInscription'>
      <h3 className='--titleAuthText'>{t('auth:confirm')}</h3>
      <div className='container_text'>
        <div className='first-confirmation-text'>{message}</div>
      </div>
      <ButtonConfirmation
        text={t('auth:ok')}
        onClickButton={() => navigate('/auth/login')}
      />
    </div>
  )
}

export default ConfirmationInscription
