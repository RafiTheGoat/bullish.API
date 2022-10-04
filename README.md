# Student management system API

## Overview

This project uses the [Karate Framework](https://github.com/karatelabs/karate/blob/master/README.md) to automate API/HTTP requests as follows.
* GET
* POST
* PUT
* DELETE


## Instructions to run the executable in localhost
1. Download the jar file named studentmgmt-0.0.1-SNAPSHOT.jar from the Files folder.
2. User should have JAVA installed on the machine.
3. Run the following command where the executable is present to execute the project in localhost
```
java -jar studentmgmt-0.0.1-SNAPSHOT.jar

```
4. [Swagger document for the API](http://localhost:9080/swagger-ui.html#/) 
5. Base URL for API test http://localhost:9080/

## Requirements to make the project 
User should have java and [Cucumber](https://cucumber.io/docs/installation/)installed on their machine and build a maven project, adding the following karate framework dependency in the pom.xml file.

```
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit5</artifactId>
    <version>1.2.0</version>
    <scope>test</scope>
</dependency>
```
* All tests are defined in the ``` *.feature``` files.
* The test runner class is located in ```testRunner``` package under ```src/test/java/resources```
### A *.feature file has the same syntax as Gherkin/Cucumber and is also described in [Karate documentation](https://github.com/karatelabs/karate/blob/master/README.md). The key words are:
* Main components
  * ```Feature``` the descrisption for the tests in this feature file.
  * ```Background``` The steps to be repeated before every ```scenario```.
  * ```Scenario``` the test to be executed.
* Each Scenario has the following keywords.
  * ```Given``` to set up the test(mainly the URL).
  * ```When``` to perform a test action.
  * ```Then``` for the expected outcome/outcomes.

    


## Executing the project
On ```Eclipse``` The user needs to right click and run the feature file located  under ``` /src/test/resources/features``` and run as **Cucumber feature**.

## Reports
Test reports in HTML format can be found under ```target/karate-reports``` with the filename ``` karate-summary.html```.

## Screenshots
![Screen Shot 2022-10-04 at 5 16 41 PM](https://user-images.githubusercontent.com/40672500/193931850-6d92d522-22d5-44d5-ac9c-48eb8e2e078e.png)
![Screen Shot 2022-10-04 at 5 16 58 PM](https://user-images.githubusercontent.com/40672500/193931995-e810d1d5-06c9-4090-91d9-dfd01d88d1ab.png)

![Screen Shot 2022-10-04 at 5 17 10 PM](https://user-images.githubusercontent.com/40672500/193932170-04c565b9-6cc7-4484-afa5-f4d287f1151c.png)

![Screen Shot 2022-10-04 at 5 17 26 PM](https://user-images.githubusercontent.com/40672500/193932198-f59be497-e4eb-4646-8041-11f5ff531f77.png)









