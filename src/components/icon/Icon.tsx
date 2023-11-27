import fr_icon from '../../assets/png/France flag.png'
import en_icon from '../../assets/png/US flag.png'
import price_icon from '../../assets/png/arcticons_priceconverter.png'
import like_icon from '../../assets/svg/material-symbols_recommend1.svg'
import dislike_icon from '../../assets/svg/material-symbols_recommend.svg'

interface IconPropsType {
  type: string
  containerClass?: string
  containerStyle?: object
  iconClass?: string
  iconStyle?: object
  size?: string
  color?: string
}

export default function Icon({
  type,
  containerClass,
  containerStyle,
  size,
  iconStyle,
}: IconPropsType): JSX.Element {
  const IconMappingObject: Record<string, JSX.Element> = {
    fr_icon: (
      <img
        src={fr_icon}
        alt='icon'
        style={{...iconStyle, height: size, width: size}}
      />
    ),
    en_icon: (
      <img
        src={en_icon}
        alt='icon'
        style={{...iconStyle, height: size, width: size}}
      />
    ),
    price_icon: (
      <img
        src={price_icon}
        alt='icon'
        style={{...iconStyle, height: size, width: size}}
      />
    ),
    like_icon: (
      <img
        src={like_icon}
        alt='icon'
        style={{...iconStyle, height: size, width: size}}
      />
    ),
    dislike_icon: (
      <img
        src={dislike_icon}
        alt='icon'
        style={{...iconStyle, height: size, width: size}}
      />
    ),
  }
  return (
    <div
      className={containerClass}
      style={{display: 'flex', ...containerStyle}}>
      {IconMappingObject[type]}
    </div>
  )
}
