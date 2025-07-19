Feature: contiene test de tipo DELETE TC-DELETE-009
      Scenario: DELETE /Users/{id} permite eliminar un usuario existente
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Users/10'
        When method DELETE
        Then status 200