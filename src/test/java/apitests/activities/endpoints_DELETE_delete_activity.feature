Feature: Contiene tests de tipo DELETE

Background:
  * url baseUrl

Scenario: Eliminar actividad existente
  Given path 'Activities/1'
  When method delete
  Then status 200
  And match response == ''

Scenario: Intentar DELETE con ID inexistente
  Given path 'Activities/99999'
  When method delete
  Then status 404
  And match response contains
    """
    {
      message: '#string'
    }
    """
  And match response.message contains 'not found'