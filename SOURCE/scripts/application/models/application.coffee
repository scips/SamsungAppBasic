define [
  "jquery",
  "application/controllers/loading",
  "application/views/loadingScreen",
  "application/controllers/screen1",
  "application/views/screen1Screen"
  ""], ($,loadingController,loadingView,screen1Controller,screen1View) ->

  class Application
    init: () ->
      @loadingController = new loadingController(new loadingView("#loading"))
      @loadingController.load()
      @screen1Controller = new screen1Controller(new screen1View("#screen1"))
      @screen1Controller.unload()
      console.log("Application initialized...")
      $('body').bind 'keydown', (e) =>
        @dispatch(e.which)

    dispatch: (e)->
      console.log "keydown evt fired #{e}"
      if (e == 65) 
        @loadingController.unload()
        @screen1Controller.load()