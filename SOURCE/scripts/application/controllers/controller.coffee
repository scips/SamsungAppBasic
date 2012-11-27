define ["jquery"], () ->
  class Controller
    constructor:(@view)->

    load:() ->
      @view.show()

    unload:() ->
      @view.hide()