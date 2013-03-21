require('mocha')

Browser = require('zombie')
assert = require('assert')

describe 'for logged in user', ->
  before (done) ->
    @browser = new Browser()
    @browser
      .visit('http://0.0.0.0:3000/')
      .then(done, done)

  it 'path name is root', (done) ->
    assert.equal @browser.location.pathname, '/'
    done()

  it '200 OK', (done) ->
    assert.ok @browser.statusCode
    done()

  it 'show welcome text', (done) ->
    assert.equal @browser.text('#welcome'), 'Welcome to Express'
    done()

  describe 'abc', (done) ->
    it 'something', (done) -> done()
