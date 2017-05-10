'use strict';

class Cs464.Models.Query extends Backbone.Model
  url: "~am01780/CS464/server/queries.php",

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
