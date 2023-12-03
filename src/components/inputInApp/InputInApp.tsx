import {ChangeEvent, forwardRef, useState} from 'react'
import './InputInApp.css'
import Icon from '../icon/Icon'

interface InputFieldType {
  isOnRow?: boolean
  placeholder?: string
  label?: string
  name: string
  value?: string
  type: string
  ref?: any
  color?: string
  error?: string
  pattern?: string
  disabled?: boolean
  onChange: (e: ChangeEvent<HTMLInputElement>) => void
}

const Input = forwardRef<HTMLInputElement, InputFieldType>(
  (
    {
      placeholder,
      name,
      onChange,
      type,
      value,
      color = 'F7F9FF',
      error,
      pattern,
      disabled = false,
      label,
      isOnRow = false,
    },
    ref,
  ) => {
    const [displayPassword, setDisplayPassword] = useState<boolean>(false)

    const onClick = (e: MouseEvent) => {
      e.preventDefault()
      setDisplayPassword(!displayPassword)
    }

    const setType = () => {
      if (type === 'password') {
        return displayPassword ? 'text' : 'password'
      }
      return type
    }

    return (
      <div className={`allInputContainer${isOnRow ? ' rowMargin' : ''}`}>
        <div className='inputInAppWrapper'>
          {label && (
            <label className='labelInputInApp' htmlFor={name}>
              {label}
            </label>
          )}
          <input
            style={{backgroundColor: `#${color}`}}
            placeholder={placeholder || ''}
            type={setType()}
            pattern={pattern || undefined}
            className={`--inputText ${error ? 'errorInput' : ''} ${
              type === 'date' ? 'dateInput' : ''
            }`}
            name={name}
            onChange={onChange}
            value={value}
            ref={ref}
            autoComplete='off'
            disabled={disabled}
          />
          {type === 'password' && (
            <div
              style={{position: 'absolute', right: '12px', top: '10.5px'}}
              onClick={(e: any) => onClick(e)}>
              {displayPassword ? (
                <div className='passwordIcon'>
                  <Icon type='eye_close' size='1.2rem' />
                </div>
              ) : (
                <div className='passwordIcon'>
                  <Icon type='eye_open' size='1.2rem' />
                </div>
              )}
            </div>
          )}
          {!!error && <div className='errorFormField'>{error}</div>}
        </div>
      </div>
    )
  },
)

export default Input
