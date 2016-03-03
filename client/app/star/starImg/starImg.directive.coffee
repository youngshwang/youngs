'use strict'

angular.module 'youngsApp'
.directive 'starImg', ['star', (star) ->
  scope: {}
  templateUrl: 'app/star/starImg/starImg.html'
  restrict: 'EA'
  controller: ['star', starImgController]
  controllerAs: 'vm'
  bindToController: true
  link: starImgLink
]

starImgController = (star) ->
  vm = @
  vm.init = (pid) ->
    console.log pid
    star.getPost pid
    .then (doc) ->
      console.log doc
      data = doc.data
      vm.title = data.title
      vm.newslist = data.newslist
      vm.img1 = []
      vm.img2 = []
      cnt = 0
      for img in data.imglist
        vm.img1.push img if cnt % 2 is 0
        vm.img2.push img if cnt % 2 is 1
        cnt++

      vm.postlist = doc.list
    return


  return vm

starImgLink = (scope, element, attrs, ctrl) ->
  ctrl.init(attrs.pid)
