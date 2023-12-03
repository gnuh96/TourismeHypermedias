import instance from '../helpers/axios.instance'

const ident = 'QxZtBGKiEApx6I1qbEQMTWYlZj5Syqr5'
const key = 'y71akXpMZh5U2oK9wCCj1TWUKWLdknjY'

const getAllRestaurant = async () => {
  const response = await instance.get(`api/restaurants`)
  return response.data
}
const getAllItemByClass = async (rt: string) => {
  const response = await instance.get(
    `http://localhost:8888/omeka-s/api/items?per_page=25&page=`,
  )
  const res = response.data.filter((e: any) => {
    const includesClass = e['@type'].includes(`tagr:${rt}`)
    return includesClass
  })

  res.forEach((el: any) => {
    el.id = el['o:id']
    el.name = el['o:title']
    el.address = el['tagr:address'][0]['@value']
    el.price = el['tagr:price'][0]['@value']
    el.nblike = el['tagr:nblike'][0]['@value']
    el.nbdislike = el['tagr:nbdislike'][0]['@value']
    el.tags = el['tagr:tags'].map((e: any) => e['display_title'])
    el.imageUrlId = el['o:media'][0]['o:id']
  })
  return res
}

const updateItemLikeById = async (nblike: string, id: string) => {
  const response = await instance.get(
    `http://localhost:8888/omeka-s/api/items/${id}`,
  )
  const currentItemData = response.data
  currentItemData['tagr:nblike'][0]['@value'] = nblike
  const updateResponse = await instance.patch(
    `http://localhost:8888/omeka-s/api/items/${id}`,
    {
      params: {key_identity: ident, key_credential: key},
    },
    currentItemData,
  )
  return updateResponse
}

const ItemService = {
  getAllRestaurant,
  getAllItemByClass,
  updateItemLikeById,
}

export default ItemService
