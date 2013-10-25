'use strict'

angular.module('cssWarsApp')
  .directive('outputCss', () ->
    template: '<iframe></iframe>'
    restrict: 'E'
    replace: true
    link: (scope, element, attrs) ->
      element.text 'this is the outputCss directive'
  )
