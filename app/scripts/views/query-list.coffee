'use strict';

class Cs464.Views.QueryList extends Backbone.View
  el: $("#query-list")

  template: JST['app/scripts/templates/query-list.ejs']

  events: {}

  constructor: (@queries) ->
    super()

  initialize: () ->
    @render

  render: () ->
    @$el.html @template(queries: @queries)
