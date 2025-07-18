Feature: Contiene los tests que hacen llamado a los endpoints de tipo POST
    para vehiculos
    Scenario Outline: Verifica que se pueda crear un vehiculo : <tipoVehiculo>
        Given url 'https://6878380731d28a460e1d80ae.mockapi.io/api/'
        And path 'vehiculo'
        * def randomNumber = read('classpath:utils/generateRandomNumber.js')
        * def numeroPuertas = randomNumber(1, 5)
        * def estadoVehiculo = call read('classpath:utils/generateRandomText.js') {baseText: 'Auto', length: 4}
        * def payload =
            """
            {
                "tipo": <tipoVehiculo>,
                "numeroPuertas": "#(numeroPuertas)",
                "paisProcedencia": "bolivia",
                "anio": 2025,
                "estadoVehiculo": "#(estadoVehiculo)"
            }
            """
        And request payload
        When method post
        Then status 201

        Examples:
            | tipoVehiculo |
            | auto         |
            | moto         |
            | camion       |

    Scenario: Verifica que se pueda crear un vehiculo TC2 :
        Given url 'https://6878380731d28a460e1d80ae.mockapi.io/api/'
        And path 'vehiculo'
        * def estadoVehiculo = call read('classpath:utils/generateRandomText.js') {baseText: 'Auto', length: 4}
        * def payload =
            """
            {
                "tipo": "Auto",
                "numeroPuertas": 0,
                "paisProcedencia": "bolivia",
                "anio": 2025,
                "estadoVehiculo": "#(estadoVehiculo)"
            }
            """
        And request payload
        When method post
        Then status 201
        And assert responseTime < 3000
        And match response == "#object"
