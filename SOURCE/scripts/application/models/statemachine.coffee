define ["jquery"],($) ->
  class StateMachine

    add: (controller) ->
      @bind "change",(e,current)->
        if controller is current
          controller.activate()
        else
          controller.deactivate()
      # add a proxied method
      controller.active = $.proxy(
        () ->
          @trigger("change",controller)
        ,@
      )
      console.log "controller.active added"
      console.log controller.active


    bind: () ->
      @o ?= $({})
      @o.bind.apply @o, arguments

    trigger: () ->
      @o ?= $({})
      @o.trigger.apply @o, arguments