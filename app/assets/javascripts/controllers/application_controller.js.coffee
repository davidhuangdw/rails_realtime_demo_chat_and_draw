FayeChat.ApplicationController = Ember.Controller.extend
  init: ->
    @_super()
    window.FayeClient = new Faye.Client('http://localhost:9292/faye')

