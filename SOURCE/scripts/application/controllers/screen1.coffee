define ["jquery"], ($) ->

  class screen1Controller
    constructor:(@view)->
      console.log "Screen1 controller created"

    load:() ->
      console.log "load called"
      @view.show()

    unload:() ->
      @view.hide()