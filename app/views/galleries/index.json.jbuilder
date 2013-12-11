json.array!(@galleries) do |gallery|
  json.extract! gallery, :title, :description, :text
  json.url gallery_url(gallery, format: :json)
end
