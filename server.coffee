_ = require('lodash')

express = require('express')
app = express()
http = require('http').Server(app)
port = process.env.PORT || 3000
app.use express.static('./static')
app.set 'view engine', 'jade'

app.get '/', (req, res) ->
  res.render 'index'

http.listen port, ->
  console.log "listening on *:", port

