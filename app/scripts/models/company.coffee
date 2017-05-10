'use strict';

class Cs464.Models.Company extends Backbone.Model
  url: ->
    if @.id then "/public_html/CS464/server/companies.php?id=" + @.id else "/public_html/CS464/server/companies.php"

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
