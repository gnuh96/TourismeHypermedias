import instance from '../helpers/axios.instance'

const getAllMedia = async () => {
  const response = await instance.get(`http://localhost:8888/omeka-s/api/media`)
  return response.data
}
const getMediaById = async (id: string) => {
  const response = await instance.get(
    `http://localhost:8888/omeka-s/api/media/${id}`,
  )
  return response.data['o:original_url']
}

const MediaService = {
  getAllMedia,
  getMediaById,
}

export default MediaService
