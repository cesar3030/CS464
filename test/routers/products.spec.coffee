# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Products Router', ->
  beforeEach ->
    @ProductsRouter = new Cs464.Routers.Products();

  it 'index route', ->

