json.array!(@phone_rentals) do |phone_rental|
  json.extract! phone_rental, :id, :phone_id, :user_id, :data, :charger
  json.url phone_rental_url(phone_rental, format: :json)
end
