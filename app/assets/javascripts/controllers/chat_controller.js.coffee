FayeChat.ChatController = Ember.ArrayController.extend
  new_message: (->null).property()
  actions:
    say: ->
      new_message = @get 'new_message'
      record=@store.createRecord('message',new_message)
      record.save().then =>
          @set 'new_message.content', ''
          record.deleteRecord()
        .catch => record.rollback()
