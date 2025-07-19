Feature: contiene test de tipo GET TC-GET-002
      Scenario:  GET /Users/{id} devuelve los datos de un usuario existente
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Users/10'
        When method GET
        Then status 200