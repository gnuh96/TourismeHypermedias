import {createBrowserRouter} from 'react-router-dom'
import OmekaS from '../omk'
import Root from '../routes/Root'

export const router = createBrowserRouter([
  {
    path: '/',
    element: <Root />,
    children: [],
  },
  {
    path: '/omk',
    element: <OmekaS />,
    children: [],
  },
])
