Feature: contiene test de tipo POST TC-POST-006
    Scenario:   POST /Users devuelve error al enviar un JSON vacío
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Users'
        * def NuevoVacio = 
             """
                {
              
                }
             """
        And request NuevoVacio
        When method POST
        Then status 200