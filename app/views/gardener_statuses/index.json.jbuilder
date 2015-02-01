json.array!(@gardener_statuses) do |gardener_status|
  json.extract! gardener_status, :id, :gardener_id, :status_id
  json.url gardener_status_url(gardener_status, format: :json)
end
