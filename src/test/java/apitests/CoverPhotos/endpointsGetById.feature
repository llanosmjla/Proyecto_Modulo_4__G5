Feature: Contiene los tests para el metodo GetById
    Scenario: TC-GET-ID-002, Solicitud con ID inexistente debe manejarse correctamente
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'CoverPhotos/9999'
        When method get 
        Then status 404
        
