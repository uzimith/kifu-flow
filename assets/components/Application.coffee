React = require('react')
jade = require('react-jade')
_ = require('lodash')

FluxComponent = require('flummox/component')

Board = require('./Board.coffee')

module.exports =
class Application extends React.Component
  render: =>
    jade.compile("""
    #container
      FluxComponent(flux=flux connectToStores=['board'])
        Board
    """)(_.assign(@, @props, @state))
