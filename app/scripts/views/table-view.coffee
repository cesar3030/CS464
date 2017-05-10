'use strict';

class Cs464.Views.TableView extends Backbone.View

  el: $("#page")

  template: JST['app/scripts/templates/table-view.ejs']

  tagName: 'table'

  id: ''

  className: ''

  events: {}

  constructor: (@headerFields, @modelAttributes, @collection, @actionUrl = '') ->
    super()

  initialize: () ->
    @render()
    # @listenTo @model, 'change', @render
    @listenTo @collection, 'fetch', @render

  render: () ->
    @$el.html @template()
    header = new Cs464.Views.HeaderView(@headerFields)
    $(@el).find('table').append(header.render())

    body = new Cs464.Views.RowsView(@modelAttributes, @collection, @actionUrl)
    $(@el).find('table').append(body.render())
    @
