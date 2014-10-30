# for more details see: http://emberjs.com/guides/models/defining-models/

FayeChat.Message = DS.Model.extend
  username: DS.attr 'string', default: ''
  content: DS.attr 'string', default:''
