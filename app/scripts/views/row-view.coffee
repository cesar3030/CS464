'use strict';

class Cs464.Views.RowView extends Backbone.View

  # el: "#page"

  template: JST['app/scripts/templates/row-view.ejs']

  tagName: 'tr'

  id: ''

  className: ''

  events: {}

  constructor: (@attributesToDisplay, @model, @actionUrl = '') ->
    super()

  initialize: () ->
    @listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(attributes: @attributesToDisplay, model: @model, actionUrl: @actionUrl)
