Feature: Eliminar actividad existente

Background:
  * url baseUrl

Scenario: Debería eliminar una actividad existente
  Given path 'Activities/1'
  When method delete
  Then status 200
  And match response == ''
