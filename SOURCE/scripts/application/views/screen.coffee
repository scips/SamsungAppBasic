define ["jquery"], ($) ->

  class ScreenView
    constructor:(@divID)->

    show: ->
      $("#{@divID}").show()

    hide: ->
      $("#{@divID}").hide()