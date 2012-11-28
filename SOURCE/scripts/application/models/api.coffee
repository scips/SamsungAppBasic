define [],() ->

  class RtbfApi
    constructor:() ->
      @url = "http://www.local.rtbf.be/api/test/demo"
      @data = []


    fetchData: () ->
      console.log "Get Data called"
      $.ajax(@url,
        async: false
        sucess: (data,textStatus,jqXHR) =>
          @data = data
          @error = textStatus
          console.log "data fetched"
        error: (jqXHR, textStatus,errorThrown) =>
          @error = textStatus
          console.log "error occured"
        )

    getError: () ->
      @error

    getData: () ->
      @data