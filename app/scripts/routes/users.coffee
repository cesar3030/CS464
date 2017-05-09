'use strict';

class Cs464.Routers.Users extends Backbone.Router

  routes:
    'users':         'index'
    'users/query/test': 'showEmails'
    'users/query/1': 'query1'
    'users/query/1': 'query1'


  initialize: ->
    @collection = new Cs464.Collections.Users()

    # HELP 
    # Go to show after model in collection is saved
    # @suggestions.on 'add', (model) =>
    # @navigate "show/#{model.id}", trigger: true

  showEmails: () ->
    new Cs464.Views.TableView(['Email','Date of birth'], ['email','date_birth'], @collection)
    @collection.fetch({data: {query: 'test'}})

  index: () ->
    links = [
      {
        name:"Query 1", 
        description: "Select the firstname and lastname of user having an email with apache.org domain.", 
        url: "#users/query/1"
      }
    ]
    new Cs464.Views.QueryList(links).render()

  query1: () ->
    new Cs464.Views.TableView(['Firstname','lastname'], ['firstname','lastname'], @collection)
    @collection.fetch({data: {query: 1}})
