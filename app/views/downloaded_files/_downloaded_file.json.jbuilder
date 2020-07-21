json.extract! downloaded_file, :id, :name, :company, :email, :file, :created_at, :updated_at
json.url downloaded_file_url(downloaded_file, format: :json)
