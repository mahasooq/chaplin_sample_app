// Generated by CoffeeScript 1.6.2
(function() {
  var __slice = [].slice;

  define(['handlebars', 'chaplin', 'lib/utils'], function(Handlebars, Chaplin, utils) {
    'use strict';    return Handlebars.registerHelper('url', function() {
      var params, routeName, url;

      routeName = arguments[0], params = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
      url = null;
      Chaplin.mediator.publish('!router:reverse', routeName, params, function(result) {
        return url = result;
      });
      return "/" + url;
    });
  });

}).call(this);
