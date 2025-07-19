Feature: Contiene los tests para el metodo GetByIdBook
    Scenario: TC-GET-ID-003 Verificar comportamiento con ID inválido (igual a 0)
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'CoverPhotos/books/covers/0'
        When method get
        Then status 400
