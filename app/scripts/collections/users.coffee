'use strict';

class Cs464.Collections.Users extends Backbone.Collection
  model: Cs464.Models.User
  url: 'http://localhost/server/users.php'
