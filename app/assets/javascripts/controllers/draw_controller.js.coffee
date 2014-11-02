FayeChat.DrawController = Ember.ArrayController.extend
  init: ->
    @_super()
    @subscribe()
  canvasContext: null
  user: Math.random()
  subscribe: ->
    client = window.FayeClient
    client.subscribe '/lines/new', (data) =>
      line = data.line
      if line.user != @get('user')
        @send('paintLine', line)
        @store.createRecord('line', line)
    client.subscribe '/lines/clear', (data) =>
      if data.user != @get('user')
        @send('clearCanvas')

  actions:
    initLines: ->
      @get('model').forEach (line)=>
        @send('paintLine',line.toJSON())
    paintLine: (line) ->
      context = @get('canvasContext')
      context.beginPath()
      context.moveTo(line.fx, line.fy)
      context.lineTo(line.tx, line.ty)
      context.stroke()
    clearCanvas: ->
      @get('model').forEach (line)->line.deleteRecord()
      context = @get('canvasContext')
      canvas = context.canvas
      context.clearRect(0,0, canvas.clientWidth, canvas.clientHeight)

    publishLine:(line)->
      @store.createRecord('line',line) #.save()
      window.FayeClient.publish '/lines/new',line:line
      @send('paintLine',line)

    publishClear: ->
      window.FayeClient.publish '/lines/clear', user:@get('user')
      @send('clearCanvas')




