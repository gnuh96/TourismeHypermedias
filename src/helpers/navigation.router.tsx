import {createBrowserRouter} from 'react-router-dom'
import Root from '../routes/Root'
import Home from '../pages/home/Home'
import Auth from '../routes/Auth'
import Login from '../pages/auth/login'
import Register from '../pages/auth/register'

export const router = createBrowserRouter([
  {
    path: '/',
    element: <Root />,
    children: [
      {
        path: '/',
        element: <Home />,
      },
    ],
  },
  {
    path: '/auth',
    element: <Auth />,
    children: [
      {
        path: '/auth/login',
        element: <Login />,
      },
      {
        path: '/auth/register',
        element: <Register />,
      },
    ],
  },
])
