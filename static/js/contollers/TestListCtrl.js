'use strict';
define(['./module'], function(controllers) {
  return controllers.controller('TestListCtrl', [
    '$scope', '$http', function($scope, $http) {
      $http.get('data').success(function(data) {
        return $scope.dudes = data;
      });
      return $scope.orderProp = "city";
    }
  ]);
});
