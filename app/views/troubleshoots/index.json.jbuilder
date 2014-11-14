json.array!(@troubleshoots) do |troubleshoot|
  json.extract! troubleshoot, :id, :user_id, :issue, :datetime
  json.url troubleshoot_url(troubleshoot, format: :json)
end
