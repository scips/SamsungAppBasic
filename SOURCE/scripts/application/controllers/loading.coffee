define ["jquery","application/controllers/controller","application/models/api"], ($,Controller,RtbfApi) ->

  class loadingController extends Controller

    constructor:(@view,@api)->
      super @view

    load:() ->
      super()
      @api.fetchData()

    unload:() ->
      super()