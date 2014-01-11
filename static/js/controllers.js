define(function(require) {
  var angular, testControllers;
  angular = require('angular');
  testControllers = angular.module('testControllers', []);
  testApp.controller('TestListCtrl', [
    '$scope', '$http', function($scope, $http) {
      $http.get('data').success(function(data) {
        return $scope.dudes = data;
      });
      return $scope.orderProp = "city";
    }
  ]);
  return testApp.controller('TestDetailCtrl', [
    '$scope', '$routeParams', function($scope, $routeParams) {
      return $scope.dudeId = $routeParams.dudeId;
    }
  ]);
});
