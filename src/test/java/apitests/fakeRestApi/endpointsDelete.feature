Feature: Contiene los tests para el metodo DELETE
    Scenario: Verifica que se pueda eliminar un vehiculo
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'CoverPhotos/11'
        When method delete
        Then status 200
        And match response == '#object'
        And match response.id == '11'
        And match response ==
            """
            {
                "tipo": "#string",
                "numeroPuertas": "#number",
                "paisProcedencia": "#string",
                "anio": "#number",
                "estadoVehiculo": "#string",
                "id": "#string"
            }
            """