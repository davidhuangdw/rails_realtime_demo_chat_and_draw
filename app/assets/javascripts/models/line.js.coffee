# for more details see: http://emberjs.com/guides/models/defining-models/

FayeChat.Line = DS.Model.extend
  fx: DS.attr 'number'
  fy: DS.attr 'number'
  tx: DS.attr 'number'
  ty: DS.attr 'number'
