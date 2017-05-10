'use strict';

class Cs464.Models.Query extends Backbone.Model
  url: "/server/queries.php",

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
