addClassToAttrs = (attrs)->
  attrs.class ?= []
  attrs.class = [attrs.class] unless attrs.class instanceof Array

tagArguments = (args)->
  attrs = args[0]
  content = args[1]
  unless typeof(attrs) is 'object'
    content = attrs
    attrs = {}
  content:content, attrs:attrs

grid = (className, grids) ->
  @div {class:className}, ->
    if grids instanceof Array
      for content in grids
        @div {class:"pure-u-1-#{grids.length}"}, content
    else
      for width, content of grids
        className = width.replace '/', '-'
        @div {class:"pure-u-#{className}"}, content

module.exports =

  grid: (grids)->
    grid.call this, 'pure-g', grids

  rGrid: (grids)->
    grid.call this, 'pure-g-r', grids

  form: ->
    {content, attrs} = tagArguments arguments
    addClassToAttrs attrs
    attrs.method ?= 'get'
    attrs.class.push 'pure-form'
    @tag 'form', attrs, content

  stackedForm: ->
    {content, attrs} = tagArguments arguments
    addClassToAttrs attrs
    attrs.class.push 'pure-form-stacked'
    @form attrs, content

  alignedForm: ->
    {content, attrs} = tagArguments arguments
    addClassToAttrs attrs
    attrs.class.push 'pure-form-aligned'
    @form attrs, content

  controlGroup: ->
    {content, attrs} = tagArguments arguments
    addClassToAttrs attrs
    attrs.class.push 'pure-control-group'
    @div attrs, content

  controls: ->
    {content, attrs} = tagArguments arguments
    addClassToAttrs attrs
    attrs.class.push 'pure-controls'
    @div attrs, content

  inputGroup: ->
    {content, attrs} = tagArguments arguments
    addClassToAttrs attrs
    attrs.class.push 'pure-group'
    @fieldset attrs, content

