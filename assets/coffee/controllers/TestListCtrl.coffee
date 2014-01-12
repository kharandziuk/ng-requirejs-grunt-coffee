'use strict'

define(['./module'], (controllers) ->
  controllers.controller('TestListCtrl', ['$scope', '$http',
      ($scope, $http) ->
          $http.get('data').success((data) ->
              $scope.dudes = data
          )
          $scope.orderProp = "city"
  ])
)
