define ->
	'use strict'

	# The routes for the application. This module returns a function.
	# `match` is match method of the Router
	(match) ->

	#Controller actions calling through matching
		match '', 'index'
		match 'users', 'users#index'