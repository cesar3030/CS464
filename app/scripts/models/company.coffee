'use strict';

class Cs464.Models.Company extends Backbone.Model
  url: ->
    if @.id then "~am01780/CS464/server/companies.php?id=" + @.id else "~am01780/CS464/server/companies.php"

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
