define ["jquery","application/controllers/controller","application/models/api"], ($,Controller,RtbfApi) ->

  class loadingController extends Controller

    constructor:(@view,@api)->
      super @view

    load:() ->
      console.log "Loading controller load"
      super()
      console.log "Gonna get data"
      @api.fetchData()

    unload:() ->
      super()