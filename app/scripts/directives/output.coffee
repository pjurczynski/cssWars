'use strict'

# '<output css="styles" html="html"></output>'
angular.module('cssWarsApp')
  .directive('output', ($compile) ->
    template: '<iframe></iframe>'
    restrict: 'E'
    replace: true
    link: (scope, element, attrs) ->
      unless attrs.css? && attrs.html?
        throw new Error('attributes css and html are required')
      styles = angular.element('<style></style>')
      styles.attr('ng-bind', attrs.css)
      html = angular.element('<div></div>')
      html.attr('ng-bind', attrs.html)
      element
        .append(styles)
        .append(html)
      $compile(element)(scope)
  )
