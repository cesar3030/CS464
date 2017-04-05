'use strict';

class Cs464.Views.CategoryView extends Backbone.View

  template: JST['app/scripts/templates/category-view.ejs']

  tagName: 'tr'

  id: ''

  className: ''

  events: {}

  initialize: () ->
    @listenTo @model, 'change', @render
    @render

  render: () ->
    @$el.html @template(@model)
