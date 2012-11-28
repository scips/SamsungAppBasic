define [],() ->

  class RtbfApi
    constructor:() ->
      @url = "http://www.local.rtbf.be/api/test/demo"
      @data = []


    fetchData: () ->
      $.ajax(@url,
        async: false
        success: (data,textStatus,jqXHR) =>
          @data = data
          @error = textStatus
        error: (jqXHR, textStatus,errorThrown) =>
          @error = textStatus
        complete: (jqXHR, textStatus) =>
          
        )

    getError: () ->
      @error

    getData: () ->
      @data