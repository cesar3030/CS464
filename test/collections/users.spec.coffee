# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Users Collection', ->
  beforeEach ->
    @UsersCollection = new Cs464.Collections.Users()
