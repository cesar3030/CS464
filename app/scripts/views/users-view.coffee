'use strict';

class Cs464.Views.UsersView extends Backbone.View

  el: "#page"

  template: JST['app/scripts/templates/users-view.ejs']

  events: {}

  initialize: () ->
    @render()
    @listenTo @collection, 'change', @render
    @listenTo @collection, 'add', @addUser
    @listenTo @collection, 'reset', @addAllUsers    

    @collection.fetch()

  render: () ->
    @$el.html @template()

  addUser: (user) ->
    userView = new Cs464.Views.UserView({model: user})
    console.log(userView.render())
    $(@el).find("tbody").append(userView.render())

  addAllUsers: () ->
    @collection.each(@addUser)
