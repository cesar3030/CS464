'use strict';

class Cs464.Routers.Companies extends Backbone.Router

  routes:
    'companies':          'index'
    'companies/query/11': 'query11'

  initialize: ->
    @collection = new Cs464.Collections.Queries()

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

  query11: () ->
    new Cs464.Views.TableView(['Company Name', 'Number of products'], ['company_name', 'Number of products'], @collection)
    @collection.fetch({data: {query: 11}})