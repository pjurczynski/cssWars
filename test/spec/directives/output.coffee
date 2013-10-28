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

  it 'should watch the css attribute', inject () ->
    expect(scope.$watch).toHaveBeenCalledWith('yourCss', jasmine.any(Function))

  it 'should watch the html attribute', inject () ->
    expect(scope.$watch).toHaveBeenCalledWith('reference', jasmine.any(Function))

  it 'should bind yourCss to styles', ->
    styles = element.find('style')
    scope.$digest()
    expect(styles.text()).toBe scope[attrs.css]

  it 'should bind html reference', ->
    html = element.find('div')
    scope.$digest()
    expect(html.text()).toBe scope[attrs.html]
