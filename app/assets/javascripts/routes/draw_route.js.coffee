FayeChat.DrawRoute = Ember.Route.extend
  model : ->
    @store.find('line')
