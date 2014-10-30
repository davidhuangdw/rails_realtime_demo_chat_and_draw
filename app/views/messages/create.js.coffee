#$('#messages').append("<%= j render partial:'chat/message', object:@message %>")
faye_client.publish '/messages/new', "<%= j render partial:'chat/message', object:@message %>"
$('#message_content').val('')