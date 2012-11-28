// Generated by CoffeeScript 1.4.0

define([], function() {
  var RtbfApi;
  return RtbfApi = (function() {

    function RtbfApi() {
      this.url = "http://www.local.rtbf.be/api/test/demo";
      this.data = [];
    }

    RtbfApi.prototype.fetchData = function() {
      var _this = this;
      console.log("Get Data called");
      return $.ajax(this.url, {
        async: false,
        sucess: function(data, textStatus, jqXHR) {
          _this.data = data;
          _this.error = textStatus;
          return console.log("data fetched");
        },
        error: function(jqXHR, textStatus, errorThrown) {
          _this.error = textStatus;
          return console.log("error occured");
        }
      });
    };

    RtbfApi.prototype.getError = function() {
      return this.error;
    };

    RtbfApi.prototype.getData = function() {
      return this.data;
    };

    return RtbfApi;

  })();
});
