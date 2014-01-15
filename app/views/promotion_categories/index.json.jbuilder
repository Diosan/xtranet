json.array!(@promotion_categories) do |promotion_category|
  json.extract! promotion_category, :id, :name, :description
  json.url promotion_category_url(promotion_category, format: :json)
end
