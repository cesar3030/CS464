'use strict';

class Cs464.Views.CategoryFormView extends Backbone.View

  el: $("#form")

  template: JST['app/scripts/templates/category-form-view.ejs']

  tagName: 'div'

  id: ''

  className: ''

  events: {}

  initialize: () ->
    #@listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(@model)
