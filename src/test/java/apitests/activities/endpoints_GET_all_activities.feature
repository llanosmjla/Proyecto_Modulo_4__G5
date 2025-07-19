Feature: GET All Activities - Positive Test (TC_ACT_001)

  Background:
    * url baseUrl
    * path 'Activities'

  Scenario: Obtener lista completa de actividades
    Given path '/'
    When method GET
    Then status 200
    And match each response == { id: '#number', title: '#string', dueDate: '#string', completed: '#boolean' }
    And assert response.length == 30

  Scenario: Intentar GET con parámetro inválido
    Given path 'Activities'
    And param limit = 'abc'
    When method get
    Then status 400
    And match response contains
      """
      {
      message: '#string'
      }
      """
    And match response.message contains 'limit'