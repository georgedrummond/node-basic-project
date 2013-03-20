require('mocha')

app = require('../app/app')
assert = require('assert')
request = require('supertest')

describe 'for logged in user', ->
  it 'should allow authentication', (done) ->
    request(app)
      .get('/')
      .expect('Content-Type', /html/)
      .expect('Content-Length', '170')
      .expect(200, done)
