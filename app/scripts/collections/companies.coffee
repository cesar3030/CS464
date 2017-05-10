'use strict';

class Cs464.Collections.Companies extends Backbone.Collection
  model: Cs464.Models.Company
  url: 'http://localhost/server/companies.php'
