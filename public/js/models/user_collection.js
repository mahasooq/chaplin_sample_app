// Generated by CoffeeScript 1.6.2
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['chaplin'], function(Chaplin) {
    var UserCollection, _ref;

    return UserCollection = (function(_super) {
      __extends(UserCollection, _super);

      function UserCollection() {
        _ref = UserCollection.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      UserCollection.prototype.url = '/users';

      return UserCollection;

    })(Chaplin.Collection);
  });

}).call(this);
