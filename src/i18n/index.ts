import i18n from 'i18next'
import {initReactI18next} from 'react-i18next'
import fr from './languages/fr.json'
import en from './languages/en.json'

i18n.use(initReactI18next).init({
  resources: {en, fr},
  lng: 'fr',
  fallbackLng: 'fr',
  interpolation: {
    escapeValue: false,
  },
})

export default i18n
