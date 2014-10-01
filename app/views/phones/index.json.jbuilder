json.array!(@phones) do |phone|
  json.extract! phone, :id, :phone_id, :name, :number, :condition, :comment
  json.url phone_url(phone, format: :json)
end
