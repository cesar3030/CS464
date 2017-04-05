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
  collection = new Cs464.Collections.Categories()
  
  table = new Cs464.Views.CategoriesView
    collection: collection



  