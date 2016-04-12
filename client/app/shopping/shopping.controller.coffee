'use strict'

angular.module 'youngsApp'
.controller 'ShoppingCtrl', ($scope, Modal) ->
  vm = @
  vm.init = () ->

    return


  vm.clickNewPage = () ->
    console.log Modal
    mo = Modal.confirm.delete (e, args) ->
      console.log e
      console.log args
    mo()


  vm.init()
  return vm
