$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src/test/resources/feature/Invoice_Processing/test2.feature");
formatter.feature({
  "line": 2,
  "name": "Title of your feature",
  "description": "I want to use this template for my feature file",
  "id": "title-of-your-feature",
  "keyword": "Feature"
});
formatter.scenario({
  "line": 6,
  "name": "asdfasdfas",
  "description": "",
  "id": "title-of-your-feature;asdfasdfas",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 7,
  "name": "navigate to application \"url\"",
  "keyword": "Then "
});
formatter.step({
  "line": 8,
  "name": "I want to create step newly and i wnt to pass value this :\"xyz\"",
  "keyword": "Then "
});
formatter.match({
  "arguments": [
    {
      "val": "url",
      "offset": 25
    }
  ],
  "location": "Step_Definations.navigate_to_application(String)"
});
formatter.result({
  "duration": 25338962350,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "xyz",
      "offset": 59
    }
  ],
  "location": "Step_Definations.checkthevalue(String)"
});
formatter.result({
  "duration": 255398,
  "status": "passed"
});
});