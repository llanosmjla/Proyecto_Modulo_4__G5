Feature: Eliminar un autor por ID desde FakeRestAPI - TC_AUT_008(/api/v1/Authors/102)

Scenario Outline: Verifica que al eliminar el autor, el código de estado sea 200
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Authors/'+ <id>
    When method DELETE
    Then status 200
    And assert responseTime < 6000
    
    Examples:
            | id  |
            | 1  |
            | 102  |
            | 103  |

       