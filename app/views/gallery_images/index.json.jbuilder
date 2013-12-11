json.array!(@gallery_images) do |gallery_image|
  json.extract! gallery_image, :gallery_id, :title, :description, :image, :text
  json.url gallery_image_url(gallery_image, format: :json)
end
