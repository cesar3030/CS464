'use strict';

class Cs464.Models.Categories extends Backbone.Model
  url: '/server/categories.php',

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
