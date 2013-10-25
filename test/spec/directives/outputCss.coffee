'use strict'

describe 'Directive: outputCss', () ->

  # load the directive's module
  beforeEach module 'cssWarsApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<output-css></output-css>'
    element = $compile(element) scope
    expect( element[0].tagName.toLowerCase() ).toBe 'iframe'

  it 'should watch passed value of css to incorporate', inject ($compile) ->
    element = angular.element '<output-css></output-css>'
    element = $compile(element) scope
