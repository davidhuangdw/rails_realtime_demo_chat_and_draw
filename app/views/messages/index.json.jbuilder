json.array!(@messages) do |message|
  json.extract! message, :id, :username, :content
  json.url message_url(message, format: :json)
end
