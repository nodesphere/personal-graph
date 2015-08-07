{ json, log, p, pjson } = require 'lightsaber'
graphviz = require 'nodesphere-graphviz'

jsonDataUri = 'https://rawgit.com/mbostock/4062045/raw/9653f99dbf6050b0f28ceafbba659ac5e1e66fbd/miserables.json'
world = new graphviz.World
world.render
  source: new graphviz.JsonAdaptor
  sourceUri: jsonDataUri
  layout: new graphviz.SpiralLayout
  
