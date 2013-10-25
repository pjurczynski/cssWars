'use strict'

angular.module('cssWarsApp')
  .directive('outputCss', () ->
    template: '<iframe></iframe>'
    restrict: 'E'
    require: 'ngModel'
    replace: true
    link: (scope, element, attrs) ->
      element.text 'this is the outputCss directive'
  )
