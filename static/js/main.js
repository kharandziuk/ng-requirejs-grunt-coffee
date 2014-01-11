'use strict';
var BOWER_PATH, fromBower;

BOWER_PATH = '../bower_components';

fromBower = function(path, min) {
  path = "" + BOWER_PATH + "/" + path + "/" + path;
  if (min != null) {
    path += '.min';
  }
  return path;
};

require.config({
  shim: {
    angular: {
      deps: ['jquery'],
      exports: 'angular'
    }
  },
  paths: {
    angular: fromBower('angular'),
    jquery: fromBower('jquery')
  }
});

require(['app'], function(app) {});
