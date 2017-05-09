'use strict';

class Cs464.Views.RowsView extends Backbone.View

  #el: "#page"

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


  render: () ->
    # @$el.find('tbody').remove()
    # @$el.find('table').append @template()
    @$el.html @template()
    # if @collection.length == 0 then @addNoResult()

  addRow: (row) ->
    rowView = new Cs464.Views.RowView(@modelAttributes, row)
    #$(@el).find("tbody").append(rowView.render())
    $(@el).append(rowView.render())

  addNoResult: () ->
    $(@el).append("<tr><td colspan='"+@modelAttributes.length+"'>No result</td></tr>")

  addAllRows: () ->
    @render()
    @collection.each(@addRow)
