# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#ready = ->
#  client = window.faye_client = new Faye.Client('http://localhost:9292/faye')
#  client.subscribe '/messages/new', (data)->
#    message = JSON.parse(data)
#    $('<li>').append($('<b>').text("#{message.username}: "))
#      .append(message.content)
#      .appendTo('#messages')
#
#$(document).on 'ready', ready
