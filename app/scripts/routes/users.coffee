'use strict';

class Cs464.Routers.Users extends Backbone.Router

  routes:
    'users':         'index'
    'users/query/1': 'showEmails'


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
    alert "index"

