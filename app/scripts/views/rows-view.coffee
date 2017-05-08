'use strict';

class Cs464.Views.RowsView extends Backbone.View

  el: "#page"

  template: JST['app/scripts/templates/rows-view.ejs']

  tagName: 'tbody'

  id: ''

  className: ''

  events: {}
  constructor: (@modelAttributes, @collection) ->
    super()

  initialize: () ->
    @render()
    @listenTo @collection, 'change', @render
    @listenTo @collection, 'add', @addRow
    @listenTo @collection, 'reset', @addAllRows   

    @collection.fetch()

  render: () ->
    @$el.find('tbody').remove()
    @$el.find('table').append @template()

  addRow: (row) ->
    rowView = new Cs464.Views.RowView(@modelAttributes, row)
    $(@el).find("tbody").append(rowView.render())

  addAllRows: () ->
    @render()
    @collection.each(@addRow)
