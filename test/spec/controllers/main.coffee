'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'cssWarsApp'

  MainCtrl = {}
  scope = {}
  $httpBackend = {}

  # Initialize the controller and a mock scope
  beforeEach( inject (_$httpBackend_, $controller, $rootScope) ->
    $httpBackend = _$httpBackend_
    # $httpBackend.expectGET('/api/awesomeThings').respond ['HTML5 Boilerplate', 'AngularJS', 'Karma']
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }
  )

  it 'do nothing', () ->
    # expect(scope.awesomeThings).toBeUndefined()
    # $httpBackend.flush()
    # expect(scope.awesomeThings.length).toBe 3
