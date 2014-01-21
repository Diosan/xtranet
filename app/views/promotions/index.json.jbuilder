json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :region_id, :brand_id, :promotion_category_id, :budget_amount, :2}, :currency_id, :split, :amount_reimbursed, :promotion_payment_status, :payment_date, :payment_reference
  json.url promotion_url(promotion, format: :json)
end
