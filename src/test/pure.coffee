{Base} = require 'coffee-views'
Pure = require '../'
util = require 'util'

module.exports =

  setUp: (done)->
    @view = new Base()
    util._extend @view, Pure
    done()

  '#form()':

    'will add the pure-form class': (test)->
      test.equal @view.form(), '<form class="pure-form" method="get"/>'
      test.done()

  '#stackedForm()':

    'will add the pure-form-stacked class': (test)->
      test.equal @view.stackedForm(), '<form class="pure-form-stacked pure-form" method="get"/>'
      test.done()

  '#alignedForm()':

    'will add the pure-form-aligned class': (test)->
      test.equal @view.alignedForm(), '<form class="pure-form-aligned pure-form" method="get"/>'
      test.done()

  '#grid()':

    'will create a grid with units': (test)->
      html = @view.grid '1/3':'left', '2/3':'right'
      test.equal html, '<div class="pure-g"><div class="pure-u-1-3">left</div><div class="pure-u-2-3">right</div></div>'
      test.done()

    'will create an equal spaced grids': (test)->
      html = @view.grid ['left', 'middle', 'right']
      test.equal html, '<div class="pure-g"><div class="pure-u-1-3">left</div><div class="pure-u-1-3">middle</div><div class="pure-u-1-3">right</div></div>'
      test.done()

