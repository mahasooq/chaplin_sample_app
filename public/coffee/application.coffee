define [
  'chaplin'
  'controllers/index_controller'
  'views/layout'
  'routes'
], (Chaplin,Index,Layout, routes) ->
  'use strict' 

  class Application extends Chaplin.Application

    title: 'Chaplinjs App'

    initialize: ->
      super
      
      # Initialize core components
      @initDispatcher()
      @initLayout()
      @initMediator()

      # Application-specific scaffold
      @initControllers()

      # Register all routes and start routing
      @initRouter routes
      
      # Freeze the application instance to prevent further changes
      Object.freeze? this

    # Override standard layout initializer   
    initLayout: ->      
      @layout = new Layout {@title}

    # Instantiate common controllers   
    initControllers: ->
      new Index()
    # Create additional mediator properties    
    initMediator: ->  
         Chaplin.mediator.flag = 0
         Chaplin.mediator.seal() 
