express = require "express"
Faker = require "Faker"
app = express()

mongodb = require('mongodb');

server = new mongodb.Server("localhost", 27017, {});
client = mongodb.Db('chaplin_users', server, {});

client.open (error, client) ->
  throw error  if error

app.use express.bodyParser()
app.use express.static(__dirname + "/public")

app.listen 8000
console.log "Running on localhost:8000"

randomUser = (i)->
	user = 
		id:i
		name:Faker.Name.findName()
		email:Faker.Internet.email()
		card: Faker.Helpers.createCard()
		address: Faker.Address.streetName

app.get "/users", (req,res) ->
	console.log "GET users"
	users = []
	users[i] = randomUser(i) for i in [1..11]
	res.send users[2..11]

app.post "/users",(req,res) ->
	console.log req.body
	user = 
		name :req.body.name
		email :req.body.email

	collection = new mongodb.Collection(client, "users")
	collection.insert user,
	  safe: true
	, (err, objects) ->
	  if err
	    console.warn err.message
	    res.send "error"
	  else
	    res.send objects[0]