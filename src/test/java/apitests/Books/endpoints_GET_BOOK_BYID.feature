Feature: Obtener un libro específico por su ID desde FakeRestAPI - TC_API_006 (/api/v1/Books/{id})

Scenario: Verifica que el libro con ID exista y contenga datos válidos
    # Generar número aleatorio entre 1 y 100
    * def randomNumero = read('classpath:utils/generateRandomNumber.js')
    * def idBook = randomNumero(1, 100)

    # Construir URL y enviar solicitud GET
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/Books'
    And path idBook
    When method GET
    Then status 200

    # Validar que la respuesta sea un objeto JSON
    And match response == '#object'

    # Validar que el ID devuelto sea el mismo
    And match response.id == idBook

    # Validar que los campos existan y tengan formato esperado
    And match response == 
    """
    {
      id: '#number',
      title: '#string',
      description: '#string',
      pageCount: '#number',
      excerpt: '#string',
      publishDate: '#string'
    }
    """
