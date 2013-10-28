'use strict'

describe 'Directive: outputCss', () ->

  # load the directive's module
  beforeEach module 'cssWarsApp'

  scope = {}
  element = {}
  validElement = ''

  beforeEach inject ($controller, $rootScope, $compile) ->
    validElement = angular.element '<output-css css="yourCss" html="reference"></output-css>'
    scope = $rootScope.$new()

    scope.yourCss = 'body { background: black }'
    spyOn(scope, '$watch').andCallThrough()
    element = $compile(validElement) scope

  it 'should make hidden element visible', inject () ->
    expect(element[0].tagName.toLowerCase()).toBe 'iframe'

  it 'should watch the css attribute', inject () ->
    expect(scope.$watch).toHaveBeenCalledWith('yourCss', jasmine.any(Function))

  it 'should watch the html attribute', inject () ->
    expect(scope.$watch).toHaveBeenCalledWith('reference', jasmine.any(Function))

  it 'should bind yourCss to styles', ->
    styles = element.find('style')
    scope.$digest()
    expect(styles.text()).toBe scope.yourCss
