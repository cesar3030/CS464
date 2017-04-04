'use strict';

class Cs464.Models.Categories extends Backbone.Model
  url: 'http://localhost/server/categories.php',

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
