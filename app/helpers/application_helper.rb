module ApplicationHelper
  def broadcast(channel, &blk)
    message = {channel:channel, data:capture(&blk), ext:{auth_token:FAYE_TOKEN}}
    uri = URI.parse('http://localhost:9292/faye')
    Net::HTTP.post_form(uri, message:message.to_json)
  end
end
