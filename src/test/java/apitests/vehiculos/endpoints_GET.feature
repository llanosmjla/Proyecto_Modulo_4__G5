Feature: Contiene los tests que hacen peticiones GET a la API de vehículos
    Scenario: Verifica que se pueda obtener todos los vehiculos
        Given url 'https://6878380731d28a460e1d80ae.mockapi.io/api/'
        And path 'vehiculo'
        When method get
        Then status 200

    Scenario: Verifica que la solicitud devuelva una lista de objetos
        Given url 'https://6878380731d28a460e1d80ae.mockapi.io/api/'
        And path 'vehiculo'
        When method get
        Then status 200
        And match response == '#[]'