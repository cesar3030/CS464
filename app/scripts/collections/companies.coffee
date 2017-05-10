'use strict';

class Cs464.Collections.Companies extends Backbone.Collection
  model: Cs464.Models.Company
  url: '/public_html/CS464/server/companies.php'
