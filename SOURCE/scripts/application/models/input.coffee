define [],() ->

  class Input

    @keyEventToEvent:(e) ->
      key = e.which
      switch key
        when 37
          'KEY_LEFT'
        when 38
          'KEY_UP'
        when 39
          'KEY_RIGHT'
        when 40
          'KEY_DOWN'
