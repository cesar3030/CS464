'use strict';

class Cs464.Routers.Users extends Backbone.Router

  routes:
    'users':         'index'
    'users/query/1': 'query1'
    'users/query/2': 'query2'


  initialize: ->
    @collection = new Cs464.Collections.Queries()

    # HELP 
    # Go to show after model in collection is saved
    # @suggestions.on 'add', (model) =>
    # @navigate "show/#{model.id}", trigger: true

  index: () ->
    links = [
      {
        name:"Query 1", 
        description: "Select the firstname and lastname of user having an email with apache.org domain.", 
        url: "#users/query/1"
      },
      {
        name:"Query 2", 
        description: "Find the youngest user.", 
        url: "#users/query/2"
      }
    ]
    new Cs464.Views.QueryList(links).render()

  query1: () ->
    new Cs464.Views.TableView(['Firstname','lastname'], ['firstname','lastname'], @collection)
    @collection.fetch({data: {query: 1}})

  query2: () ->
    new Cs464.Views.TableView(['Youngest User'], ['Youngest User'], @collection)
    @collection.fetch({data: {query: 2}})
