# basic.coffee

http = require 'http'
# https://github.com/mikeal/request
request = require 'request'
should = require 'should'

httpopts = {host:'127.0.0.1', port:3000, path:'/'}
baseurl = 'http://127.0.0.1:3000/'

describe 'server', ->
  before (done) ->
    server = require 'serv'
    done()
  it 'can be started', (done) ->
    http.get httpopts, (err, res) ->
      done()
  it 'gives an error when creating a databox without a key', (done) ->
    u = baseurl + 'newdatabox'
    request.post {url:u}, (err, resp, body) ->
      should.exist err
      done()

