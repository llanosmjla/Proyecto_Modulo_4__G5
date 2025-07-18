Feature: Contiene los tests para el metodo DELETE
    Scenario: Verifica que se pueda eliminar un vehiculo
        Given url 'https://6878380731d28a460e1d80ae.mockapi.io/api/'
        And path 'vehiculo/11'
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
        