import * as sqlite3 from 'sqlite3'

const db = new sqlite3.Database('../omk/bdd/omk.sqlite')
const sqlQuery = 'SELECT * FROM item'

db.all(sqlQuery, [], (err, rows) => {
  if (err) {
    throw err
  }

  rows.forEach(row => {
    console.log(row)
  })

  db.close(error => {
    if (error) {
      console.error('Error closing the database:', error.message)
    } else {
      console.log('Database connection closed.')
    }
  })
})