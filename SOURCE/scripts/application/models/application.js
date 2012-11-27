// Generated by CoffeeScript 1.4.0

define(["jquery", "application/controllers/loading", "application/views/loadingScreen"], function($, loadingController, loadingView) {
  var Application;
  return Application = (function() {

    function Application() {}

    Application.prototype.init = function() {
      var _this = this;
      this.loadingController = new loadingController(new loadingView("#loading"));
      this.loadingController.load();
      console.log("Application initialized...");
      return $('body').bind('keydown', function(e) {
        return _this.dispatch(e.which);
      });
    };

    Application.prototype.dispatch = function(e) {
      return console.log("keydown evt fired " + e);
    };

    return Application;

  })();
});
