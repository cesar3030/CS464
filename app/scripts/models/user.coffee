'use strict';

class Cs464.Models.User extends Backbone.Model
  url: ->
    if @.email then "www.cs.unm.edu/~am01780/CS464/server/users.php?email=" + @.email else "www.cs.unm.edu/~am01780/CS464/server/users.php"


  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
