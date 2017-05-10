# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Companies Collection', ->
  beforeEach ->
    @CompaniesCollection = new Cs464.Collections.Companies()
