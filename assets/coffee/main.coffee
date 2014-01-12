'use strict'

BOWER = '../bower_components'

fromBower = (dir, name) ->
  name = name or dir
  return "#{BOWER}/#{dir}/#{name}"

require.config(
  paths:
    angular: fromBower 'angular'
    domReady: fromBower 'requirejs-domready', 'domReady'
    ngRoute: fromBower 'angular-route'

  shim:
    angular:
      exports: 'angular'
)

require([
  'angular',
  'app',
  'domReady',
  'controllers',
  'directives',
  'filters',
  'services',
],
(ng, app, domReady)->
  app.config(['$routeProvider', ($routeProvider) ->
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
  domReady(() ->
    ng.bootstrap(document, ['myApp'])
  )
)

