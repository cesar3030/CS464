'use strict';

class Cs464.Views.Categories extends Backbone.View

  template: JST['app/scripts/templates/categories.ejs']

  tagName: 'div'

  id: 'categories-table'

  className: 'table-responsive'

  events: {}

  constructor: () ->
    super
    @model.on('sync', =>
      @render()
    )
  # initialize: () ->
    #@listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(@model)
    # alert(@model.toJSON())
    
