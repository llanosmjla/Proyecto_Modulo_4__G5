Feature: contiene test de tipo DELETE TC-DELETE-009
      Scenario: DELETE /Users/{id} devuelve error al intentar eliminar un usuario inexistente
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Users/99999'
        When method DELETE
        Then status 200