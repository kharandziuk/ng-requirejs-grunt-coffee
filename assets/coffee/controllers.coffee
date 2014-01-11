define (require) ->
  angular = require 'angular'
  testControllers = angular.module('testControllers', [])

  testApp.controller('TestListCtrl', ['$scope', '$http',
      ($scope, $http) ->
          $http.get('data').success((data) ->
              $scope.dudes = data
          )
          $scope.orderProp = "city"
  ])

  testApp.controller('TestDetailCtrl', ['$scope', '$routeParams',
      ($scope, $routeParams) ->
          $scope.dudeId = $routeParams.dudeId
  ])
