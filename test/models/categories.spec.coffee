# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Category Model', ->
  beforeEach ->
    @CategoryModel = new Cs464.Models.Category();
