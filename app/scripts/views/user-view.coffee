'use strict';

class Cs464.Views.UserView extends Backbone.View

  template: JST['app/scripts/templates/user-view.ejs']

  tagName: 'tr'

  id: ''

  className: ''

  events: {}

  initialize: () ->
    @listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(@model)
