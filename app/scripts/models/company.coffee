'use strict';

class Cs464.Models.Company extends Backbone.Model
  url: ->
    if @.id then window.serverUrl+"/server/companies.php?id=" + @.id else window.serverUrl+"/server/companies.php"

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
