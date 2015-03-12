React = require('react')
Store = require('flummox').Store
_ = require('lodash')

module.exports =
class BoardStore extends Store
  constructor: (flux) ->
    super
    boardActions = flux.getActionIds('board')
    grids = @_createGrids()
    @state =
      grids: grids
      history: []

  _createGrids: ->
    _.map [0...9], (row) =>
      _.map [0...9], (col) =>
        row: row, col: col
