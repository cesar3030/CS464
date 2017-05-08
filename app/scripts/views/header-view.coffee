'use strict';

class Cs464.Views.HeaderView extends Backbone.View

  #el: "#page"

  template: JST['app/scripts/templates/header-view.ejs']

  tagName: 'thead'

  id: ''

  className: ''

  events: {}

  constructor: (@columns) ->
    # alert(JSON.stringify(@columns))
    super()

  initialize: () ->

  render: () ->
    @$el.html @template(columns: @columns)
