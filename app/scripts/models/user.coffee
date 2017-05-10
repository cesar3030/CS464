'use strict';

class Cs464.Models.User extends Backbone.Model
  url: ->
    if @.email then window.serverUrl+"/server/users.php?email=" + @.email else window.serverUrl+"/server/users.php"


  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response
