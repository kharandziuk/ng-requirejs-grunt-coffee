'use strict'
BOWER_PATH = '../bower_components'

fromBower = (path, min) ->
  path = "#{BOWER_PATH}/#{path}/#{path}"
  if min?
    path += '.min'
  return path


require.config(
  shim:
    angular:
      deps: ['jquery']
      exports: 'angular'
  paths:
    angular: fromBower('angular')
    jquery: fromBower 'jquery'
)

require(['app'], (app)->)
