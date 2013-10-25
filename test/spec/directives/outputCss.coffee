'use strict'

describe 'Directive: outputCss', () ->

  # load the directive's module
  beforeEach module 'cssWarsApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    element = angular.element '<output-css></output-css>'

  it 'should make hidden element visible', inject ($compile) ->
    element = $compile(element) scope
    expect(element.tagName).toBe 'iframe'

  # it 'should embed styles to head of an iframe you had put'
  #   element = $compile(element) scope
