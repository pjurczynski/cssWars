describe "Directive: output", ->

  beforeEach ->
    browser().navigateTo('/')

  it 'should have a working output directive apply it\'s logic to the page', ->
    expect(browser().location().path()).toBe("/")
    expect(element('#tactic-plan-output iframe').count()).toBe 1
