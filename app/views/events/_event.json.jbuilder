json.extract! event, :id, :name, :description, :event_date, :location, :organizer_id, :created_at, :updated_at
json.url event_url(event, format: :json)
json.description event.description.to_s
