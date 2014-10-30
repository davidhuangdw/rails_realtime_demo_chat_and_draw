#faye_client.publish '/messages/new', "<%= j render partial:'chat/message', object:@message %>"
<% broadcast '/messages/new' do %>
  $('#messages').append("<%= j render partial:'chat/message', object:@message %>")
<% end %>
$('#message_content').val('')
