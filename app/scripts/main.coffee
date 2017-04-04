window.Cs464 =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    'use strict'
    console.log 'Hello from Backbone!'

$ ->
  'use strict'
  Cs464.init();
  table = new Cs464.Views.Categories
  	el: $("#page")
  table.render()