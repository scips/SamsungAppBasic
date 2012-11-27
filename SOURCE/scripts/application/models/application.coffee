define [
  "jquery",
  "application/controllers/loading",
  "application/views/loadingScreen",
  "application/controllers/screen1",
  "application/views/screen1Screen",
  "application/models/input"], ($,loadingController,loadingView,screen1Controller,screen1View,Input) ->

  class Application
    init: () ->
      @loadingController = new loadingController(new loadingView("#loading"))
      @loadingController.load()
      @screen1Controller = new screen1Controller(new screen1View("#screen1"))
      @screen1Controller.unload()
      console.log("Application initialized...")
      $('body').bind 'keydown', (e) =>
        @dispatch(Input.keyEventToEvent(e))
      $('body').bind 'AppEvent', (e,action) =>
        @dispatch(action)

    dispatch: (e)->
      console.log "dispatch received:"
      console.log e
      switch e
        when 'LOADED' 
          @loadingController.unload()
          @screen1Controller.load()
        when 'KEY_UP'
          $('body').trigger('AppEvent',['LOADED'])