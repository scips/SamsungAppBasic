define ["jquery"], () ->
  class Controller
    constructor:(@view)->

    activate:() ->
      console.log "activate called"
      @view.show()

    deactivate:() ->
      console.log "deactivate called"
      @view.hide()