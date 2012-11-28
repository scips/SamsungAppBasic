// Generated by CoffeeScript 1.4.0

define(["jquery"], function($) {
  var ScreenView;
  return ScreenView = (function() {

    function ScreenView(divID) {
      this.divID = divID;
    }

    ScreenView.prototype.setData = function(data) {
      this.data = data;
    };

    ScreenView.prototype.show = function() {
      return $("" + this.divID).show();
    };

    ScreenView.prototype.hide = function() {
      return $("" + this.divID).hide();
    };

    return ScreenView;

  })();
});
