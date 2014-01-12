'use strict'

# Declare app level module which depends on filters, and services
angular.module('myApp', [
  'ngRoute',
  'myApp.filters',
  'myApp.services',
  'myApp.directives',
  'myApp.controllers'
])
.config(['$routeProvider', ($routeProvider) ->
  $routeProvider
  .when('/view1',
    {
      templateUrl: '/static/partials/partial1.html'
      controller: 'MyCtrl1'
    })
  .when('/view2',
    {
      templateUrl: '/static/partials/partial2.html',
      controller: 'MyCtrl2'
    })
  .otherwise(
    {redirectTo: '/view1'}
  )
])
