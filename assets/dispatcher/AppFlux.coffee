Flux = require('flummox').Flux

BoardActions = require('../actions/BoardActions.coffee')
BoardStore = require('../stores/BoardStore.coffee')

class AppFlux extends Flux
  constructor: ->
    super
    @createActions('board', BoardActions)
    @createStore('board', BoardStore, @)

module.exports = AppFlux
