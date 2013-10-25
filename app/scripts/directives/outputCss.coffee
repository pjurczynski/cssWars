'use strict';

angular.module('cssWarsApp')
  .directive('outputCss', () ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->
      element.text 'this is the outputCss directive'
  )
