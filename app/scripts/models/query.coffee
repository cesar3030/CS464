'use strict';

class Cs464.Models.Query extends Backbone.Model
  url: "http://localhost/server/queries.php",

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
