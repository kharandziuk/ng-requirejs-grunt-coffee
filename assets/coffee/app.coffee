'use strict'

define((require) ->
  angular = require('angular')
  $ = require('jquery')

  angular.module('App', [])

  FormController = ($scope) ->
    user = $scope.user = {
      name: 'John Smith'
      address:
        line1: '123 Main St.'
        city:'Anytown'
        state:'AA'
        zip:'12345'
      contacts:[
        {type:'phone', value:'1(234) 555-1212'}
      ]
    }
    $scope.state = /^\w\w$/
    $scope.zip = /^\d\d\d\d\d$/

    $scope.addContact = () ->
      user.contacts.push({type:'email', value:''})

    $scope.removeContact = (contact) ->
      for i in [0..user.contacts.length]
        if (contact is user.contacts[i])
          $scope.user.contacts.splice(i, 1)
      return
  
  require([], () ->
    $(document).ready ()->
      angular.bootstrap(document.getElementById('some'), ['App'])
    return
  )
  return angular
)
