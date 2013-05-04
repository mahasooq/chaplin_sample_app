define [
	'chaplin'
	'models/user_collection'
	'views/user_collection_view'
], (Chaplin, UserCollection, UserCollectionView) ->
	'use strict'

	class Users extends Chaplin.Controller
  	
  		index :->
  			console.log "Controller:User"
  			@collection = new UserCollection()
  			@collection.fetch()
  			@view = new UserCollectionView {@collection}
   
      create :->