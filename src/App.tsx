import './App.css'
import {RouterProvider} from 'react-router-dom'
import {router} from './helpers/navigation.router'
import './i18n/index'

function App() {
  return <RouterProvider router={router} />
}

export default App
