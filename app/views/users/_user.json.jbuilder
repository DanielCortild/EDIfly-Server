json.extract! user, :id, :name, :desc, :link, :created_at, :updated_at
json.url user_url(user, format: :json)
