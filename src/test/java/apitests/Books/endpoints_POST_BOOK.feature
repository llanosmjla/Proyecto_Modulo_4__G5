Feature: Contiene los tests para el método POST para agregar portadas a libros

  Scenario: TC_API_003 (/api/v1/Books), Validar creación de un libro con datos válidos
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Books'
    * def randomNumber = read('classpath:utils/generateRandomNumber.js')
    * def numPaginas = randomNumber(10, 50)
    * def today = karate.toJson(new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()))
    * def publishDate = today + "T00:00:00Z"
    * def payload =
      """
      {
        "title": "Libro de prueba",
        "description": "Descripción",
        "pageCount": #(numPaginas),
        "excerpt": "Extracto",
        "publishDate": "#(publishDate)"
      }
      """
    And request payload
    When method post
    Then status 200
    And match response == '#object'
    And match response.id == '#number'
    And match response.title == "Libro de prueba"
    And match response.description == "Descripción"
    And match response.pageCount == numPaginas
    And match response.excerpt == "Extracto"
    And match response.publishDate == "#(publishDate)"


