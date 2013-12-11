json.array!(@events) do |event|
  json.extract! event, :id, :name, :date, :image, :description, :text, :user_id
  json.url event_url(event, format: :json)
end
