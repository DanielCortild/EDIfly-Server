json.extract! faq, :id, :title, :filename, :created_at, :updated_at
json.url faq_url(faq, format: :json)
