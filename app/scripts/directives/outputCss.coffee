'use strict'

angular.module('cssWarsApp')
  .directive('outputCss', () ->
    template: '<iframe></iframe>'
    restrict: 'E'
    replace: true
    link: (scope, element, attrs) ->
      scope.$watch attrs.css, ->
        console.log 'watch'
      scope.$watch attrs.html, ->
        console.log 'watch'
  )
