'use strict'

angular.module 'youngsApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'login',
    url: '/login/youngs'
    templateUrl: 'app/account/login/login.html'
    controller: 'LoginCtrl'

# .state 'signup',
#   url: '/signup'
#   templateUrl: 'app/account/signup/signup.html'
#   controller: 'SignupCtrl'
#
  .state 'settings',
    url: '/settings'
    templateUrl: 'app/account/settings/settings.html'
    controller: 'SettingsCtrl'
    authenticate: true
