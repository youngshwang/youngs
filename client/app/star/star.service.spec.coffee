'use strict'

describe 'Service: star', ->

  # load the service's module
  beforeEach module 'youngsApp'

  # instantiate service
  star = undefined
  beforeEach inject (_star_) ->
    star = _star_

  it 'should do something', ->
