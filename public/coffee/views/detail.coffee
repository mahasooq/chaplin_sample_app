define [
  'views/base/view'
  'text!templates/detail.hbs'
], (View,template) ->
  'use strict'

  class DetailView extends View
  	 # Automatically render after initialize.
    autoRender: true
    container: '.user-detail'
    className: 'detail'
    # Save the template string in a prototype property.
    # This is overwritten with the compiled template function.
    # In the end you might want to used precompiled templates.
    template: template
    # template = null
    initialize :->
      super
      @delegate 'click', '.edit-user', @showModal
      @delegate 'click', '.update-user',@updateUser

    showModal :->
      console.log "modal"
      $('#edit').modal('show')

    updateUser : (event) ->
      $('#edit').modal('hide')
      @model.set
        name: $('#user-name').val()
        email: $('#user-email').val()
      @model.save()

      