Feature: Contiene los tests para el metodo PUT
    Scenario: Verifica que se pueda actualizar un vehiculo
        Given url 'https://6878380731d28a460e1d80ae.mockapi.io/api/'
        And path 'vehiculo/2'
        * def estadoVehiculo = call read('classpath:utils/generateRandomEstadoVehiculo.js')
        * def payload =
            """
            {
                "tipo": "moto",
                "numeroPuertas": "0",
                "paisProcedencia": "India",
                "anio": 2024,
                "estadoVehiculo": "#(estadoVehiculo)"
            }
            """
        And request payload
        When method put
        Then status 200
        And match response.tipo == 'moto'
        And match response.numeroPuertas == '0'
        And match response.estadoVehiculo == '#(estadoVehiculo)'
        And match response.paisProcedencia == 'India'
        And match response.anio == 2024
        And match response == '#object'
