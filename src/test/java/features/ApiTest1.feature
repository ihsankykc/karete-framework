Feature: pet store api tests

  Scenario: basic test with status code validation
    Given url 'https://api.exchangerate.host/latest'
    When method GET
    Then status 200

  Scenario: header verification
    Given url "https://api.exchangerate.host/2014-04-04'"
    When method get
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Connection == 'keep-alive'
    #to verify headers we use header keyword then headername without double or single code
    # and == 'header value'
    And match header Date == '#present'
    #this equals to headers().hasHeaderWithName("headername") in restassured




  Scenario: json body verification
    Given url "https://api.exchangerate.host/2014-04-04'"
    When method get
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And print response.base
#    #verify base is EUR
    And match response.base == 'EUR'
    And match response.rates.USD == 1.3724












