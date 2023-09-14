json.extract! ad, :id, :title, :desc, :price, :location, :user_id, :category_id, :created_at, :updated_at
json.url ad_url(ad, format: :json)
