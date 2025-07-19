Feature: Contiene los tests para el metodo POST 
    Scenario:  TC-POST-001, Verificar que se pueda crear una portada valida
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'CoverPhotos'
        And request
            """
            {
                "id": 201,
                "idBook": 201,
                "url": "https://placeholdit.imgix.net/~text?txtsize=33&txt=Book 201&w=640&h=480"
            }
            """
        When method post
        Then status 200
        And match response == '#object'