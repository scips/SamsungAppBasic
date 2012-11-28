define [],() ->

  class RtbfApi
    constructor:() ->
      @url = "http://www.local.rtbf.be/api/test/demo"
      @data = []

    setCallback: (@callback) ->

    fetchData: () ->
      if @callback
        async = true
      else
        async = false

      $.ajax(@url,
        async: async
        success: (data,textStatus,jqXHR) =>
          @data = data
          @error = textStatus
          @callback(data) if @callback
        error: (jqXHR, textStatus,errorThrown) =>
          @error = textStatus
        complete: (jqXHR, textStatus) =>

        )

    getError: () ->
      @error

    getData: () ->
      @data