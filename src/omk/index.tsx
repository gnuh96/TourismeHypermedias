import {useEffect, useState} from 'react'
import {GridColDef} from '@mui/x-data-grid'
import ItemService from '../services/item.service'
import DataGridComponent from '../components/dataGrid'

export default function OmekaS() {
  const [data, setData] = useState([])
  useEffect(() => {
    fetch('./bdd/omk.sql')
      .then(response => {
        if (!response.ok) {
          throw new Error('Failed to load SQL file')
        }
        return response.text()
      })
      .then(sqlText => {
        // Process the SQL text as needed
        console.log(sqlText)
        // You can now use 'sqlText' in your application for further processing or executing the SQL statements.
      })
      .catch(error => {
        console.error(error)
      })
  }, [])
  useEffect(() => {
    const getData = async () => {
      const items = await ItemService.getAllItem()
      items.map((item: any) => {
        item.title = item['o:title']
        item.description = item['dcterms:description'][0]['@value']
        item.id = item['@id']
      })
      setData(items)
    }
    getData()
  }, [])

  console.log(data)
  const cols: GridColDef[] = [
    {field: 'title', headerName: 'Titre', flex: 1},
    {field: 'description', headerName: 'Description', flex: 1},
  ]
  return (
    <div>
      <span>Omeka S Items</span>
      <DataGridComponent
        rows={data}
        cols={cols}
        noRowText='No data'
        rowHeight={40}
        maxHeight='500px'
      />
    </div>
  )
}
