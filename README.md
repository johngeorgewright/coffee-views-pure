Pure Coffee Views
=================

An extension to [coffee-views](https://github.com/johngeorgewright/coffee-views) that adds YUI's pure views.

Installation
------------

`npm i --save coffee-views-pure`

The when using Coffee Views mixin the prototype:

```coffee
{Base} = require 'coffee-views'
Pure = require 'coffee-views-pure'
util = require 'util'

class MyView extends Base

  render: ->
    # ...

util._extend MyView.prototype, Pure

module.exports = MyView
```

API
---

### #form()

Adds the `pure-form` class name to the form

### #stakedForm()

Adds the `pure-form-stacked` class name to the form

### #alignedForm()

Adds the `pure-form-aligned` class name to the form

### #grid()

Creates a grid in 2 ways.

#### Equal column grid

Pass an array and all the array items will be equally spaced.

```coffee
@grid [
  -> @h2 'left'
  -> @h2 'right'
]

@grid [
  -> @h2 'left'
  -> @h2 'middle'
  -> @h2 'right'
]
```

#### Unequal grid

Pass an object with the keys as fractions.

```coffee
@grid
  '1/3': -> @h2 'main'
  '2/3': -> @h2 'right'
```

### #rGrid()

Same as the `grid()` method, but responsive.

### #controlGroup()

Creates a div with the `pure-control-group` class.

### #inputGroup()

Creates a fieldset with the `pure-group` class.

