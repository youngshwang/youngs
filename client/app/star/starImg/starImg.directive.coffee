'use strict'

angular.module 'youngsApp'
.directive 'starImg', ['$state','star', (star) ->
  scope: {}
  templateUrl: 'app/star/starImg/starImg.html'
  restrict: 'EA'
  controller: ['$state','star', starImgController]
  controllerAs: 'vm'
  bindToController: true
  link: starImgLink
]

starImgController = ($state, star) ->
  vm = @
  vm.data = {}
  vm.init = (pid) ->
    if pid
      vm.pid = pid
      _getPost pid


    return

  vm.removeImg = (idx) ->
    idx = _getImgIdx idx
    vm.imglist.splice idx, 1

  vm.save = () ->
    console.log vm.data
    star.savePost vm.pid, vm.data
    .then (doc) ->
      console.log doc
      alert '저장되었습니다.'
      $state.reload()

  _getPost = (pid) ->
    star.getPost pid
    .then (doc) ->
      data = doc.data
      vm.data = data
      vm.title = data.title
      vm.imglist = data.imglist
      vm.newslist = data.newslist
      vm.postlist = doc.list

  _getImgIdx = (idx) ->
    cnt = 0
    for img in vm.imglist
      if img.no is idx then return cnt
      cnt++
    return -1

  return vm

starImgLink = (scope, element, attrs, ctrl) ->
  ctrl.init(attrs.pid)
