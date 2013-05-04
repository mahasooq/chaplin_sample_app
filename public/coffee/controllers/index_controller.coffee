define [
  'chaplin'
  'views/index_view'
], (Chaplin, IndexView) ->
  'use strict'

  class Index extends Chaplin.Controller

    index :->
      @view = new IndexView
    initialize :->
      @view = new IndexView
