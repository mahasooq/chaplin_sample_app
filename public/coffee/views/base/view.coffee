define [
  'handlebars'
  'chaplin'
  'lib/view_helper' # Just load the view helpers, no return value 
], (Handlebars, Chaplin, View_helper) ->
  'use strict'

  class View extends Chaplin.View
    getTemplateFunction: ->      

      template = @template

      if typeof template is 'string'
        templateFunc = Handlebars.compile template
        @constructor::template = templateFunc
      else
        templateFunc = template

      templateFunc
