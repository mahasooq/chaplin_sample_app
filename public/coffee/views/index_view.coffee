define [
  'bootstrap'
  'models/user'
  'views/base/view'
  'text!templates/index.hbs'
], (Bootstrap, User, View,template) ->
  'use strict'

  class IndexView extends View
  	 # Automatically render after initialize.
    autoRender: true
    container: '.main'
    

    # Save the template string in a prototype property.
    # This is overwritten with the compiled template function.
    # In the end you might want to used precompiled templates.
    template: template
    # template = null
    initialize :->
      super
      @delegate 'click','.create', @showModal
      @delegate 'click','.create-user', @createUser

    showModal :->
      # $('#create').modal('show')

    createUser :->
      userdata =
        name:$('#name').val()
        email:$('#email').val()
      user = new User userdata
      user.save()


