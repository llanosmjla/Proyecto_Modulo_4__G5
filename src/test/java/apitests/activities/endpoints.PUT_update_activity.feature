Feature: Contiene tests de tipo PUT

Background:
  * url baseUrl
  * def generateTitle = read('classpath:utils/generateRandomText.js')

Scenario: Debería actualizar una actividad existente
  Given path 'Activities/1'
  And def newTitle = generateTitle({ baseText: 'Actualizada', length: 6 })
  And request
    """
    {
      "id": 1,
      "title": "#(newTitle)",
      "dueDate": "2025-12-31T00:00:00",
      "completed": true
    }
    """
  When method put
  Then status 200
  And match response ==
    """
    {
      id: 1,
      title: '#(newTitle)',
      dueDate: '2025-12-31T00:00:00',
      completed: true
    }
    """

Scenario: Intentar PUT con ID inconsistente
  Given path 'Activities/1'
  And request
    """
    {
      "id": 2,
      "title": "Inconsistencia",
      "dueDate": "2025-12-31T00:00:00",
      "completed": true
    }
    """
  When method put
  Then status 400
  And match response contains
    """
    {
      message: '#string'
    }
    """
  And match response.message contains 'coincide'