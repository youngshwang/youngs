'use strict'

angular.module 'youngsApp'
.service 'star', (starFactory) ->
  getPosts: () ->
    starFactory.getList()

  getPost: (pid) ->
    starFactory.one(pid).get()

  savePost: (pid, data) ->
    starFactory.one(pid).customPUT data
