define [
  'views/base/view'
  'views/detail'
  'text!templates/user.hbs'
], (View, DetailView, template) ->
  'use strict'

  class UserView extends View
  	 # Automatically render after initialize.
    autoRender: true    
    tagName:'li'

    # Save the template string in a prototype property.
    # This is overwritten with the compiled template function.
    # In the end you might want to used precompiled templates.
    template: template
    # template = null

    initialize: ->
      super
      @delegate 'click', '.single-user', @show
      # @delegate 'click', '.single-user', @show

    show : (event)->
      $('.user-detail').html('')
      $('.userlist a').removeClass('active')
      $(event.currentTarget).addClass('active')
      new DetailView model: @model