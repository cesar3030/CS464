# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Company Model', ->
  beforeEach ->
    @CompanyModel = new Cs464.Models.Company();
