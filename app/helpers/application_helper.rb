module ApplicationHelper
  def broadcast_data(channel, data)
    message = {channel:channel, data:data, ext:{auth_token:FAYE_TOKEN}}
    uri = URI.parse('http://localhost:9292/faye')
    Net::HTTP.post_form(uri, message:message.to_json)
  end

  def broadcast(channel, &blk)
    broadcast_data(channel,capture(&blk))
  end

  def broadcast_json(channel, object)
    broadcast_data(channel, object.to_json)
  end
end
