'use strict';

class Cs464.Routers.Products extends Backbone.Router
  
  routes:
    'products':         'index'
    'products/query/3': 'query3'
    'products/query/8': 'query8'
    'products/query/10': 'query10'

  initialize: ->
    @collection = new Cs464.Collections.Queries()

    # HELP 
    # Go to show after model in collection is saved
    # @suggestions.on 'add', (model) =>
    # @navigate "show/#{model.id}", trigger: true

  index: () ->
    links = [
      {
        name:"Query 3", 
        description: "Select the products that have been linked to a deleted category.", 
        url: "#products/query/3"
      },
      {
        name:"Query 8", 
        description: "Count the number of product of each category and display the result from the category with the most products to the one with the least products.", 
        url: "#products/query/8"
      },
      {
        name:"Query 10", 
        description: "Returns the list of products that have never been bought.", 
        url: "#products/query/10"
      }
    ]
    new Cs464.Views.QueryList(links).render()
    $("#form").html ""

  query3: () ->
    new Cs464.Views.TableView(['Product id','Price'], ['product_id', 'price'], @collection)
    @collection.fetch({data: {query: 3}})

  query8: () ->
    new Cs464.Views.TableView(['Category name', 'Count'], ['category_name', 'count(category_name)'], @collection)
    @collection.fetch({data: {query: 8}})

  query10: () ->
    new Cs464.Views.TableView(['Product name'], ['name'], @collection)
    @collection.fetch({data: {query: 10}})