'use strict'

angular.module 'youngsApp'
.controller 'StarCtrl', ($scope, $stateParams, star) ->
  vm = @
  vm.id = $stateParams.id
  vm.init = () ->

    return

  vm.init()
  return vm
