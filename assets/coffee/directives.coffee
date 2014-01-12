define ['angular'] , (ng)->
  'use strict'
  ng.module('directives', []).
    directive('appVersion', ['version', (version) ->
      return (scope, elm, attrs) ->
        elm.text(version)
    ])
