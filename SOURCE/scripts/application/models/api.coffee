define [],() ->

  class RtbfApi
    constructor:() ->
      @url = "http://www.local.rtbf.be/api/test/demo"
      @data = []

    setCallback: (@callback) ->

    setErrorCallback: (@errorCallback) ->

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
          @errorCallback(textStatus,errorThrown) if @errorCallback
        complete: (jqXHR, textStatus) =>

        )

    getError: () ->
      @error

    getData: () ->
      @data