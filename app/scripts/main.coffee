#window.serverUrl = "http://localhost"
window.Cs464 =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  init: ->
    'use strict'
    console.log 'Hello from Backbone!'
    window.serverUrl = "https://www.cs.unm.edu/~am01780/CS464"

$ ->
  'use strict'
  Cs464.init();
  window.location.hash = ''
  Backbone.history.stop()

  Backbone.history.start()
  new Cs464.Routers.Users()
  new Cs464.Routers.Products()
  new Cs464.Routers.Orders()
  new Cs464.Routers.Demographics()
  new Cs464.Routers.Companies()
  new Cs464.Routers.Categories()



  