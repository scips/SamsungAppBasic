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
      return $.ajax(this.url, {
        async: false,
        success: function(data, textStatus, jqXHR) {
          _this.data = data;
          return _this.error = textStatus;
        },
        error: function(jqXHR, textStatus, errorThrown) {
          return _this.error = textStatus;
        },
        complete: function(jqXHR, textStatus) {}
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