'use strict'

define(['./module'], (controllers) ->
  controllers.controller('TestDetailCtrl', ['$scope', '$routeParams',
      ($scope, $routeParams) ->
          $scope.dudeId = $routeParams.dudeId
  ])
)
