'use strict';

class Cs464.Views.Categories extends Backbone.View

  template: JST['app/scripts/templates/categories.ejs']

  tagName: 'div'

  id: 'categories-table'

  className: 'table-responsive'

  events: {}

  initialize: () ->
    #@listenTo @model, 'change', @render

  render: () ->
    @$el.html @template#@template(@model.toJSON())
