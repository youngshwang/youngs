'use strict'

angular.module 'youngsApp'
.directive 'googleAdSense', ->
  scope: {}
  templateUrl: 'components/googleAdSense/googleAdSense.html'
  restrict: 'A'
  replace: true
  controller: () ->
    vm = @
    vm.init = ->
      setTimeout (->
        (adsbygoogle = window.adsbygoogle or []).push {}
      ), 1000
      return
    return vm
  link: (scope, element, attrs, ctrl) ->
    ctrl.init()

#adSenseTpl = '<ins class="ad-div adsbygoogle responsive" style="display:block;" data-ad-client="ca-pub-6812867982623858" data-ad-slot="4958020526" data-ad-format="auto"></ins></ins>'
#angular.module('youngsApp').directive 'googleAdSense', ($window, $compile) ->
#  {
#    restrict: 'A'
##    transclude: true
#    template: adSenseTpl
#    replace: true
#    compile: (tElement, tAttrs, transclude) ->
#      {
#        post: (scope, element, iAttrs) ->
#          element.html ''
#          element.append angular.element($compile(adSenseTpl)(scope))
#          if !$window.adsbygoogle
#            $window.adsbygoogle = []
#          $window.adsbygoogle.push {}
#          return
#      }
#  }
