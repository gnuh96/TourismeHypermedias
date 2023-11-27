import {createBrowserRouter} from 'react-router-dom'
import Root from '../routes/Root'
import Home from '../pages/home/Home'
import Search from '../pages/search/Search'

export const router = createBrowserRouter([
  {
    path: '/',
    element: <Root />,
    children: [
      {
        path: '/',
        element: <Home />,
      },
      {
        path: '/search',
        element: <Search />,
      },
    ],
  },
])
