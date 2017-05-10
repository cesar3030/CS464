'use strict';

class Cs464.Models.Category extends Backbone.Model
  url: ->
    if @.category_name then "server/categories.php?category_name=" + @.category_name else "server/categories.php"

  initialize: () ->

  defaults: { }

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
