Feature: contiene test de tipo PUT TC-PUT-008

Scenario: PUT /Users/{id} devuelve error al actualizar un usuario inexistente
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Users/9999'
    * def ActualizarInexistente =
    """
    {
        "id": 9999,
        "userName": "UserUsuario 1000",
        "password": "contraseña1000"
    }
    """
    And request ActualizarInexistente
    When method PUT
    Then status 200
