Feature: contiene test de tipo GET TC-GET-001
      Scenario: Verifica que se pueda enlistar todos los usuarios
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Users'
        When method GET
        Then status 200