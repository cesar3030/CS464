'use strict';

class Cs464.Views.QueryList extends Backbone.View
  el: $("#query-list")

  template: JST['app/scripts/templates/query-list.ejs']

  tagName: 'ul'

  id: ''

  className: 'nav nav-pills pull-right'

  events: {}

  constructor: (@queries) ->
    super()

  initialize: () ->
    @render

  render: () ->
    @$el.html @template(queries: @queries)
