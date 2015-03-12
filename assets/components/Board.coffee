React = require('react')
jade = require('react-jade')
_ = require('lodash')

FluxComponent = require('flummox/component')

Grid = require('./Grid.coffee')

module.exports =
class Board extends React.Component
  render: =>
    cx = React.addons.classSet
    jade.compile("""
    #board(class=rotate_class)
      .grids
        each rows, index in grids
          .clearfix(key=index)
            each grid,index in rows
              .col(key=index)
                Grid(grid=grid)
    """)(_.assign(@, @props, @state))
