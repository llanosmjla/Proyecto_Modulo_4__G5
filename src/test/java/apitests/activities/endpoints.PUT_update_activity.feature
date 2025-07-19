Feature: Actualizar actividad existente

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