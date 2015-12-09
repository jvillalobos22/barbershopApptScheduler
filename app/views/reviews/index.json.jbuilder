json.array!(@reviews) do |review|
  json.extract! review, :id, :barber_id, :client_name, :str, :rating
  json.url review_url(review, format: :json)
end
