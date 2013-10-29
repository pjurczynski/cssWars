'use strict'

angular.module('cssWarsApp')
  .controller 'MainCtrl', ($scope, $http) ->
    $scope.yourCss = ''
    $scope.html = '<div>200x100</div>'
    $scope.referenceCss = 'div { width: 200px; height: 100px; background-color: teal }'
