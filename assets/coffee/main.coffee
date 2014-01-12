'use strict'
BOWER_PATH = '../bower_components'

fromBower = (dir, name) ->
  if not name?
    path = "#{BOWER_PATH}/#{dir}/#{dir}"
  else
    path = "#{BOWER_PATH}/#{dir}/#{name}"
  return path


require.config(
  shim:
    angular:
      exports: 'angular'
  paths:
    angular: fromBower('angular')
    domReady: fromBower 'requirejs-domready', 'domReady'
  deps: ['./bootstrap']


)

