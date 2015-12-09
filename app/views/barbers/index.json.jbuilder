json.array!(@barbers) do |barber|
  json.extract! barber, :id, :user_id, :image_filename, :bio, :first_name, :last_name
  json.url barber_url(barber, format: :json)
end
