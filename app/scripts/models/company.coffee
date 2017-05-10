'use strict';

class Cs464.Models.Company extends Backbone.Model
  url: ->
    if @.id then "www.cs.unm.edu/~am01780/CS464/server/companies.php?id=" + @.id else "www.cs.unm.edu/~am01780/CS464/server/companies.php"

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
