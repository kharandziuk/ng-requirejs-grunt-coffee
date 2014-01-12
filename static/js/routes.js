'use strict';
define(['./app'], function(app) {
  return app.config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.when('/', {
        templateUrl: 'static/partials/list.html',
        controller: 'TestListCtrl'
      }).when('/detail/:dudeId', {
        templateUrl: 'static/partials/detail.html',
        controller: 'TestDetailCtrl'
      }).otherwise({
        redirectTo: '/'
      });
    }
  ]);
});
