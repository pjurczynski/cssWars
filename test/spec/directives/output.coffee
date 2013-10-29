'use strict'

describe 'Directive: output', () ->

  # load the directive's module
  beforeEach module 'cssWarsApp'

  scope = {}
  element = {}
  validElement = ''
  attrs = {}

  beforeEach inject ($controller, $rootScope, $compile) ->
    attrs.css = 'yourCss'
    attrs.html = 'reference'
    validElement = angular.element '<output css="'+attrs.css+'" html="'+attrs.html+'"></output>'
    scope = $rootScope.$new()

    scope.yourCss = 'body { background: black }'
    scope.reference = 'This is text of the body'
    spyOn(scope, '$watch').andCallThrough()
    element = $compile(validElement)(scope)

  it 'should make hidden element visible', inject () ->
    expect(element[0].tagName.toLowerCase()).toBe 'iframe'

  it 'should bind yourCss to styles', ->
    scope.$digest()
    parsed_src = element.attr('src').split(',')[1]
    generated_element = angular.element( parsed_src )
    expect(generated_element[0].innerHTML).toBe scope[attrs.css]

  it 'should bind html reference', ->
    scope.$digest()
    parsed_src = element.attr('src').split(',')[1]
    generated_element = angular.element( parsed_src )
    generated_element = angular.element(generated_element[1])
    expect(generated_element.text()).toBe scope[attrs.html]

  it "should throw error if required attributes aren't specified", inject ($compile)->
    invalidElement = angular.element('<output></output>')
    expect( -> $compile(invalidElement)(scope)).toThrow()
