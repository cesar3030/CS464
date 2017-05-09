'use strict';

class Cs464.Routers.Orders extends Backbone.Router

  routes:
    'orders':         'index'
    'orders/query/5': 'query5'
    'orders/query/6': 'query6'
    'orders/query/9': 'query9'

  initialize: ->
    @collection = new Cs464.Collections.Queries()
  
  index: () ->
    links = [
      {
        name:"Query 5", 
        description: "Select the email of user which have submited an order of one item, using a 3 days delivery type.", 
        url: "#orders/query/5"
      },
      {
        name:"Query 6", 
        description: "FIND the email of the user(s) who bought the most expensive product.", 
        url: "#orders/query/6"
      },
      {
        name:"Query 9", 
        description: "Sort the orders based on the quantity of items it contains, from larger to smaller ones.", 
        url: "#orders/query/9"
      }
    ]
    new Cs464.Views.QueryList(links).render()

  query5: () ->
    new Cs464.Views.TableView(['Email'], ['o.email'], @collection)
    @collection.fetch({data: {query: 5}})

  query6: () ->
    new Cs464.Views.TableView(['Email'], ['email'], @collection)
    @collection.fetch({data: {query: 6}})

  query9: () ->
    new Cs464.Views.TableView(['Order id','Status', 'Email', 'Quantity'], ['order_id', 'status', 'email', 'quantity'], @collection)
    @collection.fetch({data: {query: 9}})
