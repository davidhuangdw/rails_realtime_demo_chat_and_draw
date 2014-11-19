#= require ember
#= require ember-data
#= require_self
#= require faye_chat

# for more details see: http://emberjs.com/guides/application/
window.FayeClient = new Faye.Client('http://localhost:9292/faye')
#window.FayeClient = new Faye.Client('http://10.183.12.203:9292/faye')
window.FayeChat = Ember.Application.create
  LOG_TRANSITIONS_INTERNAL: true


# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


