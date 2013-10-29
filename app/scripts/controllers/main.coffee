'use strict'

angular.module('cssWarsApp')
  .controller 'MainCtrl', ($scope, $http) ->
    $scope.yourCss = ''
    $scope.reference = ''
