// Generated by CoffeeScript 1.6.2
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['chaplin', 'views/index_view'], function(Chaplin, IndexView) {
    'use strict';
    var Index, _ref;

    return Index = (function(_super) {
      __extends(Index, _super);

      function Index() {
        _ref = Index.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      Index.prototype.index = function() {
        return this.view = new IndexView;
      };

      Index.prototype.initialize = function() {
        return this.view = new IndexView;
      };

      return Index;

    })(Chaplin.Controller);
  });

}).call(this);