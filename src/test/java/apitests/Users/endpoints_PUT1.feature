Feature: contiene test de tipo PUT TC-PUT-007

Scenario: PUT /Users/{id} permite actualizar los datos de un usuario
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Users/10'
    * def Actualizar =
    """
    {
        "id": 10,
        "userName": "UserUsuario 100",
        "password": "contraseña100"
    }
    """
    And request Actualizar
    When method PUT
    Then status 200
