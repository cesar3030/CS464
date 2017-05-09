'use strict';

class Cs464.Models.User extends Backbone.Model
  url: ->
    if @.email then "/server/users.php?email=" + @.email else "/server/users.php"


  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
