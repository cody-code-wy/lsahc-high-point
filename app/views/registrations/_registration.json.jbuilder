json.extract! registration, :id, :horse, :rider, :created_at, :updated_at
json.url registration_url(registration, format: :json)
