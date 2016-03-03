'use strict'

describe 'Directive: googleAdSense', ->

  # load the directive's module and view
  beforeEach module 'youngsApp'
  beforeEach module 'components/googleAdSense/googleAdSense.html'
  element = undefined
  scope = undefined
  beforeEach inject ($rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<google-ad-sense></google-ad-sense>'
    element = $compile(element) scope
    scope.$apply()
