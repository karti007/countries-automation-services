Feature: Test Countries Services Feature

#Below Scenario is to Test for Country Name
Scenario Outline: Test for Country Name '<InputName>'
Given url COUNTRIES_GET_URL + GET_W_NAME_ENDPOINT + '/' + '<InputName>'
 When method GET
 Then assert responseStatus == '<ResponseStatus>'
    * if (responseStatus == 404) karate.abort()
  And match response == '#[]' 						    
    * def onlyForInput = function(x){ return (x.name == '<InputName>') || (x.altSpellings.contains('<InputName>')) }
    * def res = karate.filter(response,onlyForInput)
  And print res[0].capital
 
Examples:
|read ('classpath:Files/Input_Name.csv')|


#Below Scenario is to Test for Country Code
Scenario Outline: Test for Country Code '<InputCode>'
Given url COUNTRIES_GET_URL + GET_W_CODE_ENDPOINT + '/' + '<InputCode>'
 When method GET
 Then assert responseStatus == '<ResponseStatus>'
    * if (responseStatus == 404) karate.abort()					    
  And print response.capital
 
Examples:
|read ('classpath:Files/Input_Code.csv')|