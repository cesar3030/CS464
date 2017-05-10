'use strict';

class Cs464.Routers.Categories extends Backbone.Router

  routes:
    'categories':          'index'

  initialize: ->
    

    # HELP 
    # Go to show after model in collection is saved
    # @suggestions.on 'add', (model) =>
    # @navigate "show/#{model.id}", trigger: true

  index: () ->
    links = [
      {
        name:"Query 11", 
        description: "Find the companies that sell a minimum of 10 products.", 
        url: "#companies/query/11"
      }
    ]
    new Cs464.Views.QueryList(links).render()
    $("#form").html ""
