'use strict'

describe 'Controller: ShoppingCtrl', ->

  # load the controller's module
  beforeEach module 'youngsApp'
  ShoppingCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ShoppingCtrl = $controller 'ShoppingCtrl',
      $scope: scope

  it 'should ...', ->
