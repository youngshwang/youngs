'use strict'

angular.module 'youngsApp'
.service 'star', (starFactory) ->
  getPosts: () ->
    starFactory.getList()
