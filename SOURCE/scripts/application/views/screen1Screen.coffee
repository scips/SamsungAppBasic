define ["jquery"], ($) ->

  class screen1ScreenView
    constructor:(@divID)->
      console.log "Screen view with id: #{divID}"

    show: ->
      $("#{@divID}").show()

    hide: ->
      $("#{@divID}").hide()
