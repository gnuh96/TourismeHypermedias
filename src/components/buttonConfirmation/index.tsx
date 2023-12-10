import React from 'react'
import './index.css'

interface ButtonConfirmationPropsType {
  text: string
  disable?: boolean
  onClickButton?: React.MouseEventHandler
}

const ButtonConfirmation: React.FC<ButtonConfirmationPropsType> = ({
  text,
  disable = false,
  onClickButton,
}) => {
  return (
    <div className='submitButton'>
      <button
        onClick={onClickButton}
        style={{
          color: disable ? '#424D66' : '#fff',
          backgroundColor: disable ? '#ECECEC' : '#8a0f0f',
        }}
        disabled={disable}>
        <span>{text}</span>
      </button>
    </div>
  )
}

export default ButtonConfirmation
