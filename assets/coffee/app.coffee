'use strict'
define([
  'angular',
  'ngRoute',
  'controllers',
  'services',
  'filters',
  'directives',
],
(ng)->
  ng.module('myApp', [
    'ngRoute',
    'filters',
    'services',
    'directives',
    'controllers'
  ])
)
