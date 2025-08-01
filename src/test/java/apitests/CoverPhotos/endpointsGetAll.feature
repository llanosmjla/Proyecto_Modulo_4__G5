Feature: Contiene los tests para el metodo GET
    Scenario: TC-GET-001, Obtener lista completa de portadas registradas
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'CoverPhotos'
        When method get
        Then status 200
        And match response == '#[]'
        And match response[0] == '#object'
        And match response[0] ==
            """
            {
                "id": "#number",
                "idBook": "#number",
                "url": "#string"
            }
            """