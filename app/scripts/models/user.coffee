'use strict';

class Cs464.Models.User extends Backbone.Model
  url: ->
    if @.email then "public_html/CS464/server/users.php?email=" + @.email else "public_html/CS464/server/users.php"


  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
