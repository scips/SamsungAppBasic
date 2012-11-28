define [
  "jquery",
  "application/controllers/loading",
  "application/views/loadingScreen",
  "application/controllers/screen1",
  "application/views/screen1Screen",
  "application/models/input",
  "application/models/api"], ($,loadingController,loadingView,screen1Controller,screen1View,Input,Api) ->

  class Application
    init: () ->
      @api = new Api()
      @loadingController = new loadingController(new loadingView("#loading"),@api)
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