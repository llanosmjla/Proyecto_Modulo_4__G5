Feature: contiene test de tipo POST TC-POST-004 
    Scenario:  POST /Users permite crear un nuevo usuario con datos correctos
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Users'
        * def nuevo = 
             """
                {
                "id": 100,
                "userName": "User 100",
                "password": "Password100"
                }
             """
        And request nuevo
        When method POST
        Then status 200