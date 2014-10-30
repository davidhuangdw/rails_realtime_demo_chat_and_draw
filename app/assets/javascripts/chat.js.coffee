# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  client = window.faye_client = new Faye.Client('http://localhost:9292/faye')
  client.subscribe '/messages/new', (data)->
    $('#messages').append(data)
#    alert(data)

$(document).on 'ready', ready
