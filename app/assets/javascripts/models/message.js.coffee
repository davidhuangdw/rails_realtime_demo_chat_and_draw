# for more details see: http://emberjs.com/guides/models/defining-models/

FayeChat.Message = DS.Model.extend
  username: DS.attr 'string'
  content: DS.attr 'string'
