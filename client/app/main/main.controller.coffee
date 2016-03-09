'use strict'

angular.module 'youngsApp'
.controller 'MainCtrl', ($scope, $http, $state) ->
  $state.go 'star'
#  $scope.awesomeThings = []
#
#  $http.get('/api/things').success (awesomeThings) ->
#    $scope.awesomeThings = awesomeThings
#
#
#  $scope.addThing = ->
#    return if $scope.newThing is ''
#    $http.post '/api/things',
#      name: $scope.newThing
#
#    $scope.newThing = ''
#
#  $scope.deleteThing = (thing) ->
#    $http.delete '/api/things/' + thing._id
