'use strict'

describe 'Directive: outputCss', () ->

  # load the directive's module
  beforeEach module 'cssWarsApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should require ngModel', inject ($compile) ->
    element = angular.element '<output-css></output-css>'
    compile = ()->
      element = $compile(element) scope
    expect( compile ).toThrow()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<output-css ng-model="sth"></output-css>'
    element = $compile(element) scope
    expect( element[0].tagName.toLowerCase() ).toBe 'iframe'

  # it 'should embed styles to head of an iframe you had put'
  #   element = $compile(element) scope
