'use strict'

angular.module 'youngsApp'
.controller 'StarCtrl', ($scope, star) ->
  vm = @
  vm.init = () ->
    star.getPosts()
    .then (doc) ->
      console.log doc
    .catch (e) ->
      console.log e
    return


  vm.init()

  return vm
