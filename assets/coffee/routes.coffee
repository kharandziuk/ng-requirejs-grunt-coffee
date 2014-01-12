'use strict'

define(['./app'], (app)->
  return app.config(['$routeProvider',
      ($routeProvider) ->
          $routeProvider
          .when('/', {
              templateUrl: 'static/partials/list.html',
              controller: 'TestListCtrl'
          })
          .when('/detail/:dudeId', {
              templateUrl: 'static/partials/detail.html',
              controller: 'TestDetailCtrl'
          })
          .otherwise({
              redirectTo: '/'
          })
  ])
)
