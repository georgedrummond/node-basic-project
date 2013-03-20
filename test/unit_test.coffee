require('mocha')
assert = require('assert')

describe 'User', ->
  beforeEach ->
    @abc = 34

  it 'has something', ->
    assert.equal @abc, 34