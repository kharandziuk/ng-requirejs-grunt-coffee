'use strict';
define(['./module'], function(controllers) {
  return controllers.controller('TestDetailCtrl', [
    '$scope', '$routeParams', function($scope, $routeParams) {
      return $scope.dudeId = $routeParams.dudeId;
    }
  ]);
});
