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
  window.location.hash = ''
  Backbone.history.stop()

  Backbone.history.start()
  new Cs464.Routers.Users()
  new Cs464.Routers.Products()
  new Cs464.Routers.Orders()
  new Cs464.Routers.Demographics()
  new Cs464.Routers.Companies()
  new Cs464.Routers.Categories()
  # collection = new Cs464.Collections.Users()
  
  # # table = new Cs464.Views.UsersView
  # #   collection: collection

  # table = new Cs464.Views.TableView(['Email','Date of birth'], ['email','date_birth'], collection)
  # table.render()
  # header = new Cs464.Views.HeaderView([{name: "one"},{name: "two"},{name: "three"}])
  # header.render()

  # user = new Cs464.Models.User({email: "test@email.com"})
  # row = new Cs464.Views.RowView(["email"], user)
  # row.render()



  