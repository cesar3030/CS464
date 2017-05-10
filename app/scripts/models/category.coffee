'use strict';

class Cs464.Models.Category extends Backbone.Model
  url: ->
    if @.category_name then window.serverUrl+"/server/categories.php?category_name=" + @.category_name else window.serverUrl+"/server/categories.php"

  initialize: () ->

  defaults: { }

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
