'use strict';

class Cs464.Models.User extends Backbone.Model
  url: ->
    if @.email then "http://localhost/server/users.php?email=" + @.email else "http://localhost/server/users.php"


  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
