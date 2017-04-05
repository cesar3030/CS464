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
  collection = new Cs464.Collections.Users()
  
  table = new Cs464.Views.UsersView
    collection: collection



  