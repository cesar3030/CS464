'use strict';

class Cs464.Models.Query extends Backbone.Model
  url: "http://www.cs.unm.edu/~am01780/CS464/server/queries.php",

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
