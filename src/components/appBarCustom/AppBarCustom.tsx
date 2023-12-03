import React, {useEffect, useState} from 'react'
import AppBar from '@mui/material/AppBar'
import Box from '@mui/material/Box'
import Toolbar from '@mui/material/Toolbar'
import Typography from '@mui/material/Typography'
import {IconButton, Menu, MenuItem} from '@mui/material'
import logoApp from '../../assets/png/logo.png'
import Icon from '../icon/Icon'
import LanguageIcon from '@mui/icons-material/Language'
import {useTranslation} from 'react-i18next'
import i18n from '../../i18n'
import LoginIcon from '@mui/icons-material/Login'
import LogoutIcon from '@mui/icons-material/Logout'
import StorageService from '../../services/storage.service'
import AuthService from '../../services/auth.service'
import {useNavigate} from 'react-router-dom'

export default function AppBarCustom(props: any) {
  const {t} = useTranslation('navBar')

  const navigate = useNavigate()
  const [userAccess, setUserAccess] = useState<any>(null)

  useEffect(() => {
    setUserAccess(StorageService.getUserAccess())
  }, [])

  const [anchorEl, setAnchorEl] = useState<null | HTMLElement>(null)
  const handleMenuClick = (event: React.MouseEvent<HTMLElement>) => {
    setAnchorEl(event.currentTarget)
  }
  const handleMenuClose = () => {
    setAnchorEl(null)
  }
  const changeLanguage = (language: string) => {
    i18n.changeLanguage(language)
    handleMenuClose()
    setAnchorEl(null)
  }
  const handleClickLogButton = () => {
    if (userAccess) {
      AuthService.logout()
      setUserAccess(null)
      navigate('/')
    } else {
      navigate('/auth/login')
    }
  }
  return (
    <Box sx={{}}>
      <AppBar component='nav' {...props}>
        <Toolbar
          variant='dense'
          sx={{
            backgroundColor: '#FFFFFF',
            color: '#324A76',
            display: 'flex',
            justifyContent: 'space-between',
            padding: '10px 0',
          }}>
          <Box sx={{display: 'flex', position: 'absolute', bottom: -8}}>
            <img
              src={logoApp}
              style={{height: 45}}
              onClick={() => navigate('/')}
            />
          </Box>
          <Box
            sx={{display: 'flex', justifyContent: 'flex-end', width: '100%'}}>
            <Box sx={{display: 'flex', alignItems: 'center'}}>
              <IconButton
                edge='start'
                color='inherit'
                aria-label='menu'
                sx={{mr: 1}}
                onClick={handleMenuClick}>
                <LanguageIcon />
              </IconButton>
              <Menu
                anchorEl={anchorEl}
                open={Boolean(anchorEl)}
                onClose={handleMenuClose}
                anchorOrigin={{
                  vertical: 'bottom',
                  horizontal: 'right',
                }}
                transformOrigin={{
                  vertical: 'top',
                  horizontal: 'right',
                }}>
                <MenuItem
                  sx={{width: '250px', color: '#324A76'}}
                  onClick={() => changeLanguage('fr')}>
                  <div style={{display: 'flex', alignItems: 'center'}}>
                    <Icon type='fr_icon' size='35px' />
                    <Typography variant='subtitle1' sx={{paddingLeft: '16px'}}>
                      {t('french')}
                    </Typography>
                  </div>
                </MenuItem>
                <MenuItem
                  sx={{width: '250px', color: '#324A76'}}
                  onClick={() => changeLanguage('en')}>
                  <div style={{display: 'flex', alignItems: 'center'}}>
                    <Icon type='en_icon' size='35px' />
                    <Typography variant='subtitle1' sx={{paddingLeft: '16px'}}>
                      {t('english')}
                    </Typography>
                  </div>
                </MenuItem>
              </Menu>
            </Box>
            <Box>
              <IconButton
                size='large'
                edge='start'
                color='inherit'
                aria-label='menu'
                sx={{mr: 2}}
                onClick={handleClickLogButton}>
                {userAccess ? <LogoutIcon /> : <LoginIcon />}
              </IconButton>
            </Box>
          </Box>
        </Toolbar>
      </AppBar>
    </Box>
  )
}
