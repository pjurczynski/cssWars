describe "Directive: output", ->

  beforeEach ->
    browser().navigateTo('/')

  it 'should have a working output directive apply it\'s logic to the page', ->
    expect(browser().location().path()).toBe("/")
    expect(element('#tactic-plan-output iframe').count()).toBe 1

  it 'should change styles', ->
    test_element = element('#tactic-plan-output iframe style')
    expect(browser().location().path()).toBe("/")
    expect(test_element.html()).toBe ''

    styles = 'body { background-color: black }'
    input('yourCss').enter(styles)
    expect(test_element.html()).toBe styles
