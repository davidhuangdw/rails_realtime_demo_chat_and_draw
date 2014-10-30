FayeChat.ChatRoute = Ember.Route.extend
  model: ->
    @store.find('message')
  setupController: (controller, model)->
    @_super(controller, model)
    controller.set 'new_message', {username:'',content:''}
