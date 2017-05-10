'use strict';

class Cs464.Models.Company extends Backbone.Model
  url: ->
    if @.id then "http://localhost/server/companies.php?id=" + @.id else "http://localhost/server/companies.php"

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
