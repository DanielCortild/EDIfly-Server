json.extract! news, :id, :title, :filename, :created_at, :updated_at
json.url news_url(news, format: :json)
