'use strict';

class Cs464.Models.Category extends Backbone.Model
  url: ->
    if @.category_name then "public_html/CS464/server/categories.php?category_name=" + @.category_name else window.serverUrl+"public_html/CS464/server/categories.php"

  initialize: () ->

  defaults: { }

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
