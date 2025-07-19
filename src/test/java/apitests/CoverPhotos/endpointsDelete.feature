Feature: Contiene los tests para el metodo DELETE
    Scenario Outline: TC-DELETE-005, Eliminar un ID negativo o cero
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'CoverPhotos/<id>'
        When method delete
        Then status 400
        And match response == '#object'
        And assert responseTime < 6000
        And match response ==
            """
            {
                "message": "#string"
            }
            """
    
        Examples:
            | id  |
            | -1  |
            | -2  |
            | -3  |
            | -5  |
            | 0   |

       