json.extract! category, :id, :title, :desc, :user_id, :created_at, :updated_at
json.url category_url(category, format: :json)
