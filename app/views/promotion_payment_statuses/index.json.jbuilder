json.array!(@promotion_payment_statuses) do |promotion_payment_status|
  json.extract! promotion_payment_status, :id, :name, :description
  json.url promotion_payment_status_url(promotion_payment_status, format: :json)
end
