json.extract! event, :id, :titre, :description, :prix, :created_at, :updated_at
json.url event_url(event, format: :json)