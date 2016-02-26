'use strict'

angular.module 'youngsApp'
.factory 'starFactory', (Restangular) ->
  model = Restangular.all 'posts'
  model
