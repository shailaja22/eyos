Feature: Get statistics for all countries about COVID-19

  Scenario: To verify the response if path is removed from URL

     #if path is invalid, Error 404 must be shown
    Given url baseUrl
    # And path 'statistics'   #path is removed
    And header X-RapidAPI-Key = key
    And header X-RapidAPI-Host = host
    When method GET
    Then status 404