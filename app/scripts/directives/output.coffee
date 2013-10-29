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
      element.attr('ng-src',
        'data:text/html;charset=utf-8,<html><head><style>{{'+attrs.css+'}}</style></head><body>{{'+attrs.html+'}}</body></html>')
      $compile(element)(scope)
  )
