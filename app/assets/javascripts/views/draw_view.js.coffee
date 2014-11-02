FayeChat.CanvasView = Ember.View.extend
  templateName: 'canvas'
  user: Ember.computed.alias('controller.user')
  didInsertElement: ->
    @initCanvasAttr(@$('#canvas')[0])
    @get('controller').send('initLines')
#    @subscribe()

  initCanvasAttr: (canvas) ->
    @set 'offx', canvas.offsetLeft
    @set 'offy', canvas.offsetTop
    @set('controller.canvasContext', canvas.getContext('2d'))


  getPos: (e) ->
    x: e.pageX-@get('offx')
    y: e.pageY-@get('offy')
  updatePos: (e) -> @set 'pos', @getPos(e)
  mouseUp: -> @set('drawing', false)
  mouseDown: (e)->
    @set('drawing', true)
    @updatePos(e)
  mouseMove: (e)->
    if @get('drawing')
      cur = @getPos(e)
      line =
        fx: @get('pos.x')
        fy: @get('pos.y')
        tx: cur.x
        ty: cur.y
        user: @get('user')
      @updatePos(e)
      @get('controller').send('publishLine',line)

