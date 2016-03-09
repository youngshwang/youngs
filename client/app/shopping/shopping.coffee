'use strict'

angular.module 'youngsApp'
.config ($stateProvider) ->
  $stateProvider.state 'shopping',
    url: '/shopping'
    templateUrl: 'app/shopping/shopping.html'
    controller: 'ShoppingCtrl'
