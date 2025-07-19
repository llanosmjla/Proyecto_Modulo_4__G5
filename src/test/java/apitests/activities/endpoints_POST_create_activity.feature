Feature: Contiene tests de tipo POST

  Background:
    * url baseUrl
    * def generateTitle = read('classpath:utils/generateRandomText.js')

  Scenario: Crear actividad exitosamente
    Given path 'Activities'
    And def randomTitle = generateTitle({ baseText: 'Actividad', length: 8 })
    And request
      """
      {
        "id": 31,
        "title": "#(randomTitle)",
        "dueDate": "2025-12-31T00:00:00",
        "completed": false
      }
      """
    When method post
    Then status 200
    And assert responseTime < 3000
    And match response ==
      """
      {
      id: 31,
      title: '#(randomTitle)',
      dueDate: '2025-12-31T00:00:00',
      completed: false
      }
      """

  Scenario: Crear actividad con ID duplicado
    Given path 'Activities'
    And request
      """
      {
        "id": 1,
        "title": "Actividad duplicada",
        "dueDate": "2025-12-31T00:00:00",
        "completed": true
      }
      """
    When method post
    Then status 409
    And match response contains
      """
      {
      message: '#string'
      }
      """
    And match response.message contains 'ID'