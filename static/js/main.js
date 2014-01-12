'use strict';
var BOWER_PATH, fromBower;

BOWER_PATH = '../bower_components';

fromBower = function(dir, name) {
  var path;
  if (name == null) {
    path = "" + BOWER_PATH + "/" + dir + "/" + dir;
  } else {
    path = "" + BOWER_PATH + "/" + dir + "/" + name;
  }
  return path;
};

require.config({
  shim: {
    angular: {
      exports: 'angular'
    }
  },
  paths: {
    angular: fromBower('angular'),
    domReady: fromBower('requirejs-domready', 'domReady')
  },
  deps: ['./bootstrap']
});
