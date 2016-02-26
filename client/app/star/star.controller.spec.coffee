'use strict'

describe 'Controller: StarCtrl', ->

  # load the controller's module
  beforeEach module 'youngsApp'
  StarCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    StarCtrl = $controller 'StarCtrl',
      $scope: scope

  it 'should ...', ->
