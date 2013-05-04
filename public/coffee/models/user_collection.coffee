define [
	'chaplin'
], (Chaplin) ->

	class UserCollection extends Chaplin.Collection

		url:'/users'