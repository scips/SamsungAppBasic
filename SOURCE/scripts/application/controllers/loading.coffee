define ["jquery"], ($) ->

  class loadingController
    constructor:(@view)->
      console.log "Loading controller created"

    load:() ->
      console.log "load called"
      @view.show()

    unload:() ->
      @view.hide()