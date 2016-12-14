json.extract! fitbit, :id, :name, :picture, :battery_life_in_hours, :colour, :display, :created_at, :updated_at
json.url fitbit_url(fitbit, format: :json)