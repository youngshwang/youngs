'use strict'

angular.module 'youngsApp'
.controller 'ShoppingCtrl', ($scope, $mdDialog, Modal) ->
  vm = @
  vm.init = () ->

    return


  vm.clickNewPage = (ev) ->
    $mdDialog.show {
      controller: DialogController
      templateUrl: 'page.add.tmp.html'
      parent: angular.element(document.body)
      targetEvent: ev
      clickOutsideToClose:true
      fullscreen: false
    }
    .then ((answer) ->
      console.log answer
    ), ->
      console.log 'cancel'
    # console.log Modal
    # mo = Modal.confirm.delete (e, args) ->
    #   console.log e
    #   console.log args
    # mo()


  vm.init()
  return vm

DialogController = ($scope, $mdDialog) ->
  $scope.hide = () ->
    $mdDialog.hide()

  $scope.cancel = () ->
    $mdDialog.cancel()

  $scope.answer = (answer) ->
    $mdDialog.hide(answer)

  return
