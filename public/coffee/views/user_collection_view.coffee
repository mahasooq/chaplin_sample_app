define [
	'chaplin'
	'views/base/collection_view'
	'views/user_view'
], (Chaplin, CollectionView,UserView) ->
	'use strict'
   
	class UserCollectionView extends CollectionView
		itemView : UserView
		autoRender :true
		container : ".users"
		tagName : 'ul'
		className : 'unstyled userlist'