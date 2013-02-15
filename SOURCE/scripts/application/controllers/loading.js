// Generated by CoffeeScript 1.4.0
var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define(["jquery", "application/controllers/controller", "application/models/api"], function($, Controller, RtbfApi) {
  var loadingController;
  return loadingController = (function(_super) {

    __extends(loadingController, _super);

    function loadingController(view, api) {
      this.view = view;
      this.api = api;
      this.dataLoaded = __bind(this.dataLoaded, this);

      loadingController.__super__.constructor.call(this, this.view);
    }

    loadingController.prototype.load = function() {
      var _this = this;
      this.api.setCallback(this.dataLoaded);
      return setTimeout(function() {
        return $('body').trigger('AppEvent', ['LOADED']);
      }, 1500);
    };

    loadingController.prototype.unload = function() {};

    loadingController.prototype.dataLoaded = function() {
      console.log("data:");
      console.log(this.api.getData());
      return $('body').trigger('AppEvent', ['LOADED']);
    };

    return loadingController;

  })(Controller);
});
