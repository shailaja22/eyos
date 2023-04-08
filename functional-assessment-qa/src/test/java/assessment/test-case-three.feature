Feature: Get statistics for all countries about COVID-19

  Scenario: To compare number of covid cases is greater in countries of North America

     #To validate total number of cases in country Anguilla is greater than saint-pierre-miquelon

    Given url baseUrl
    And path 'statistics'
    And header X-RapidAPI-Key = key
    And header X-RapidAPI-Host = host
    When method GET
    Then status 200
    And print response
    And assert response.response[0].cases.total >= response.response[1].cases.total
   