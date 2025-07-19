Feature: Contiene los tests para el metodo PUT
    Scenario: TC-PUT-001, Actualizar correctamente un registro existente con datos válidos
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'CoverPhotos/1'
        * def payload =
            """
            {
                "id": 1,
                "idBook": 10,
                "url": "https://images.imgix.net/~text?txtsize=33&txt=Book 10&w=550&h=750"
            }
            """
        And request payload
        When method put
        Then status 200
        And match response == '#object'
        And match response ==
            """
            {
                "id": 1,
                "idBook": 10,
                "url": "https://images.imgix.net/~text?txtsize=33&txt=Book 10&w=550&h=750"
            }
            """
        And assert responseTime < 6000  