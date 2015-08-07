path = require 'path'
express = require "express"
serveStatic = require 'serve-static'
http = require "http"
lightsaber = require "lightsaber"

{ log } = lightsaber

APP_ROOT = path.resolve __dirname, '..', '..', 'public'

app = express()
app.use serveStatic APP_ROOT

port = process.env.PORT or 7000
server = http.createServer app
server.listen port, ->
  console.log "listening on port #{port}"
