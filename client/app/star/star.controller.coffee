'use strict'

angular.module 'youngsApp'
.controller 'StarCtrl', ($scope, $stateParams, $state, star) ->
  vm = @
  vm.id = $stateParams.id

  vm.init = () ->
    if !vm.id
      star.getPosts()
      .then (doc) ->
        $state.go 'star', {id: doc[0].pid}
    return

  vm.init()
  return vm
