'use strict'

angular.module 'youngsApp'
.config ($stateProvider) ->
  $stateProvider.state 'star',
    url: '/star/:id'
    templateUrl: 'app/star/star.html'
    controller: 'StarCtrl'
    controllerAs: 'vm'

  $stateProvider.state 'starlist',
    url: '/star'
    templateUrl: 'app/star/star.html'
    controller: 'StarCtrl'
    controllerAs: 'vm'
