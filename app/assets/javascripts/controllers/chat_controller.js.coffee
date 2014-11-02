FayeChat.ChatController = Ember.ArrayController.extend
  init: ->
    @_super()
    console.log('chat')
    window.FayeClient.subscribe '/messages/new', (data) =>
      payload = JSON.parse(data)
      console.log(payload, payload.message.id,@store.getById('message',payload.message.id))
      @store.pushPayload('message', payload)

  new_message: (->null).property()
  actions:
    say: ->
      new_message = @get 'new_message'
      record=@store.createRecord('message',new_message)
      record.save().then =>
          @set 'new_message.content', ''
          record.deleteRecord()
        .catch => record.rollback()
