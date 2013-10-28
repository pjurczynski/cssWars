'use strict'

angular.module('cssWarsApp')
  .directive('outputCss', ($compile) ->
    template: '<iframe></iframe>'
    restrict: 'E'
    replace: true
    link: (scope, element, attrs) ->
      styles = angular.element('<style></style>')
      styles.attr('ng-bind', attrs.css)
      $compile(element.append(styles)) scope
      # scope.$watch attrs.css, ->
      #   styles[0].innerHTML = newVal
      scope.$watch attrs.html, ->
        console.log 'watch'
  )
