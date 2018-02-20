json.extract! log, :id, :name, :artists, :venue, :created_at, :updated_at
json.url log_url(log, format: :json)
