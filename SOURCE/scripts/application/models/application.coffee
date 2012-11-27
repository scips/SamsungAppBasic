define ["jquery","application/controllers/loading","application/views/loadingScreen"], ($,loadingController,loadingView) ->

  class Application
    init: () ->
      @loadingController = new loadingController(new loadingView("#loading"))
      @loadingController.load()
      console.log("Application initialized...")
      $('body').bind 'keydown', (e) =>
        @dispatch(e.which)

    dispatch: (e)->
      console.log "keydown evt fired #{e}"