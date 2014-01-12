'use strict'

define ['require', 'angular', 'app', 'routes'], (require, ng) ->
  require(['domReady!'], (document) ->
    ng.bootstrap(document, ['app'])
  )

