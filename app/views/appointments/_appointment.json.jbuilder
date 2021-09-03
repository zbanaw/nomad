json.extract! appointment, :id, :coach_id, :user_id, :time_slot, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
