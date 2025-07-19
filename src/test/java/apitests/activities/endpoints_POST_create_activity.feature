Feature: Crear actividad exitosamente

Background:
  * url baseUrl
  * def generateTitle = read('classpath:utils/generateRandomText.js')

Scenario: Debería crear una nueva actividad
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
  And match response ==
    """
    {
      id: 31,
      title: '#(randomTitle)',
      dueDate: '2025-12-31T00:00:00',
      completed: false
    }
    """