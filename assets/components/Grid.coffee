React = require('react')
jade = require('react-jade')
_ = require('lodash')

module.exports =
class Grid extends React.Component
  render: =>
    jade.compile("""
      .grid
    """)(_.assign(@, @props, @state))
