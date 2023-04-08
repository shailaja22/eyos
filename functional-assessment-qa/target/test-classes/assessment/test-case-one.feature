Feature: Get statistics for all countries about COVID-19

  Scenario: To verify the response if headers are sent empty.

    # header key is removed, 401 Error must be shown

    Given url baseUrl
    And path 'statistics'
    #And header X-RapidAPI-Key = key   #header is removed
    And header X-RapidAPI-Host = host
    When method GET
    Then status 401


