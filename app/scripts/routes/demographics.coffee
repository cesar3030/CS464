'use strict';

class Cs464.Routers.Demographics extends Backbone.Router
  
  routes:
    'demographics':         'index'
    'demographics/query/4': 'query4'
    'demographics/query/7': 'query7'

  initialize: ->
    @collection = new Cs464.Collections.Queries()
  
  index: () ->
    links = [
      {
        name:"Query 4", 
        description: "Find those countries that have at least a city with the same name.", 
        url: "#demographics/query/4"
      },
      {
        name:"Query 7", 
        description: "Select all the countries listed in the database.", 
        url: "#demographics/query/7"
      }
    ]
    new Cs464.Views.QueryList(links).render()

  query4: () ->
    new Cs464.Views.TableView(['Country 1', 'Country 2', 'State'], ['A.country', 'B.country', 'A.state'], @collection)
    @collection.fetch({data: {query: 4}})

  query7: () ->
    new Cs464.Views.TableView(['Country'], ['countries listed'], @collection)
    @collection.fetch({data: {query: 7}})