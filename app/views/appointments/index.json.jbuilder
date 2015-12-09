json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :appt_start, :barber_id, :client_name, :client_phone
  json.url appointment_url(appointment, format: :json)
end
