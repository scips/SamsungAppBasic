define ["jquery"], ($) ->

  class loadingScreenView
    constructor:(@divID)->
      console.log "Loading view with id: #{divID}"

    show: ->
      $("#{@divID}").show()

    hide: ->
      $("#{@divID}").hide()
