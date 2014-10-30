FayeChat.ApplicationView = Ember.View.extend
  templateName: 'application'
  didInsertElement: ->
    client = new Faye.Client('http://localhost:9292/faye')
    client.subscribe '/messages/new', (data) =>
      payload = JSON.parse(data)
      store = @get('controller').store
      console.log(payload, payload.message.id,store.getById('message',payload.message.id))
      store.pushPayload('message', payload)
