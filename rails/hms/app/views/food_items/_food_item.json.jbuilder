json.extract! food_item, :id, :title, :food_items, :created_at, :updated_at
json.url food_item_url(food_item, format: :json)
