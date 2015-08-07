path = require 'path'
express = require "express"
http = require "http"
lightsaber = require "lightsaber"
# favicon = require 'serve-favicon'
graphviz = require 'nodesphere-graphviz'

{ log } = lightsaber

APP_ROOT = path.resolve __dirname, '..', 'client'

app = express()
# app.use favicon '.'
# app.use express.static path.join __dirname, 'public'
# app.use express.logger 'dev'

app.get "/", (req, res) ->
  res.send graphviz.html()

port = process.env.PORT or 7000
server = http.createServer app
server.listen port, ->
  console.log "listening on port #{port}"
