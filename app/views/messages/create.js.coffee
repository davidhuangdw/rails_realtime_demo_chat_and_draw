$('#messages').append("<%= j render partial:'chat/message', object:@message %>")
$('#message_content').val('')