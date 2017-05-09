# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Users Router', ->
  beforeEach ->
    @UsersRouter = new Cs464.Routers.Users();

  it 'index route', ->

