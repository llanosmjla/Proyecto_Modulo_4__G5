Feature: contiene test de tipo POST TC-POST-005
    Scenario:   POST /Users devuelve error al crear un usuario con ID ya existente
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Users'
        * def NuevoExistente = 
             """
                {
                "id": 10,
                "userName": "User 10",
                "password": "Password10"
                }
             """
        And request NuevoExistente
        When method POST
        Then status 200