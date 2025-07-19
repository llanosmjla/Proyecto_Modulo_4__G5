Feature: contiene test de tipo GET TC-GET-001
      Scenario:  GET /Users/{id} devuelve error al buscar un ID inexistente
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Users/100'
        When method GET
        Then status 404