@test
Feature: Student Management System API

  Background: 
    # the base url
    * url 'http://localhost:9080/'

  
  Scenario: Enroll new student in the system
    #the path for the method add student
    Given path '/studentmgmt/addStudent'
    #request body
    And request
      """
      {
      "firstName": "Mike",
      "id": 213551,
      "lastName": "Wong",
      "nationality": "Singapore",
      "studentClass": "3 A"
      }
      """
    # method type
    When method post
    #status fetching
    Then status 200
    #printing request response
    And print response

  #updating student information in the system
  Scenario: Update student record
    Given path '/studentmgmt/updateStudent'
    And request
      """
      {
      	"id": 213551,
      	"class": "3 C"
      	
      }
      """
    When method PUT
    Then status 200
    And print response

  #Deleting a student from the system
  Scenario: Delete a student from the system
    Given path '/studentmgmt/deleteStudent'
    And request
      """
      {
      "id": 213551
      
      }
      """
    When method DELETE
    Then status 200
    And print response

  #Fetch students data
  Scenario: Fetch student records
  #defining a query for the parameter to be passed in our GET request
  * def query = {studentClass:'3 A'}
    Given path '/studentmgmt/fetchStudents/'
    #passing the parameter to our GET request
    And params query
    When method GET
    Then status 200
    And print response
