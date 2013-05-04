requirejs.config({
    // The path where your JavaScripts are located
    baseUrl: './js/',
    // Specify the paths of vendor libraries
    paths: {
      jquery: 'vendor/jquery-1.9.1',
      bootstrap :'vendor/bootstrap',
      underscore: 'vendor/underscore-1.4.3',
      backbone: 'vendor/backbone-1.0.0',
      handlebars: 'vendor/handlebars-1.0.rc.1',
      text: 'vendor/require-text-2.0.3',
      chaplin: 'vendor/chaplin-0.8.1'
    },
    // Underscore and Backbone are not AMD-capable per default,
    // so we need to use the AMD wrapping of RequireJS
    shim: {
      underscore: {
        exports: '_'
      },
      backbone: {
        deps: ['underscore', 'jquery'],
        exports: 'Backbone'
      },
      handlebars: {
        exports: 'Handlebars'
      }
    }
    // For easier development, disable browser caching
    // Of course, this should be removed in a production environment
    //, urlArgs: 'bust=' + (new Date()).getTime()
  });

  // Bootstrap the application
  require(['application'], function(Application) {
    (new Application).initialize();
  });