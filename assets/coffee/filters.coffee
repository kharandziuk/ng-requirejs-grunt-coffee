define ['angular'] , (ng)->
  'use strict'

  ng.module('filters', [])
    .filter('interpolate', ['version', (version) ->
      return (text) ->
        return String(text).replace(/\%VERSION\%/mg, version)
    ])
