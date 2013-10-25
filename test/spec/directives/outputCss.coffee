'use strict'

describe 'Directive: outputCss', () ->

  # load the directive's module
  beforeEach module 'cssWarsApp'

  scope = {}
  validElement = angular.element '<output-css css="yourCss" html="reference"></output-css>'

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<output-css></output-css>'
    element = $compile(element) scope
    expect( element[0].tagName.toLowerCase() ).toBe 'iframe'

  it 'should watch the css attribute', inject ($compile) ->
    spyOn(scope, '$watch')
    element = validElement
    element = $compile(element) scope
    expect(scope.$watch).toHaveBeenCalledWith('yourCss', jasmine.any(Function))

  it 'should watch the html attribute', inject ($compile) ->
    spyOn(scope, '$watch')
    element = angular.element '<output-css css="yourCss" html="reference"></output-css>'
    element = $compile(element) scope
    expect(scope.$watch).toHaveBeenCalledWith('reference', jasmine.any(Function))
