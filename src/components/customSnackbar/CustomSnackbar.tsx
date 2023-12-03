import {Dispatch, SetStateAction, SyntheticEvent, forwardRef} from 'react'
import Snackbar from '@mui/material/Snackbar'
import MuiAlert, {AlertProps} from '@mui/material/Alert'

interface CustomSnackbarProps {
  openSnackbar: boolean
  type: 'error' | 'info' | 'success'
  message: string
  setOpenSnackbar: Dispatch<SetStateAction<boolean>>
}

const Alert = forwardRef<HTMLDivElement, AlertProps>(function Alert(
  props,
  ref,
) {
  return <MuiAlert elevation={6} ref={ref} variant='filled' {...props} />
})

export default function CustomSnackbar({
  openSnackbar,
  type,
  message,
  setOpenSnackbar,
}: CustomSnackbarProps) {
  const handleClose = (event?: SyntheticEvent | Event, reason?: string) => {
    if (reason === 'clickaway') {
      return
    }
    setOpenSnackbar(false)
  }
  return (
    <Snackbar
      autoHideDuration={4000}
      open={openSnackbar}
      onClose={handleClose}
      anchorOrigin={{horizontal: 'center', vertical: 'top'}}>
      <Alert onClose={handleClose} severity={type} sx={{width: '100%'}}>
        {message}
      </Alert>
    </Snackbar>
  )
}
