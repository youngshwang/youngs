'use strict'

describe 'Directive: starImg', ->

  # load the directive's module and view
  beforeEach module 'youngsApp'
  beforeEach module 'app/star/starImg/starImg.html'
  element = undefined
  scope = undefined
  beforeEach inject ($rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<star-img></star-img>'
    element = $compile(element) scope
    scope.$apply()
