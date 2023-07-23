  > # <em><strong>Final project for ITF Manual Testing Course</strong></em> 

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice.


The final project will be split into 2 sections: Testing section and SQL section.

Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench.

  ## Test Plan 
  
The Test Plan is designed to describe all details of testing for the Parents & Students module from the Aeries application.

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.
  
| DATE| DESCRIPTION | AUTOR | COMMENTS |
| --- | --- | --- | --- |
| 01.09.2023| Test Plan for Version 1.0 | Laura Scutariu |  |
  

>>  ## 1. Introduction 
  
 #### 1.1 Project objective
 #### 1.2 Functionalities in scope
 #### 1.3 Functionalities and tests out of scope



>> ## 2. Test process

 #### 2.1 Test planning
 #### 2.2 Test analysis
 #### 2.3 Test design
 #### 2.4 Test implementation
 #### 2.5 Test execution
 #### 2.6 Test closure
 #### 2.7 Test monitoring and control


>> ## 3. Test deliverables

 #### 3.1 Test plan
 #### 3.2 Test conditions
 #### 3.3 Test cases
 #### 3.4 Daily test summary reports
 #### 3.5 Traceability matrix
 #### 3.6 Test case results
 #### 3.7 Bugs report
 #### 3.8 Test completion report



  > ## 1. Introduction
    
<p>The Aeries API is a web-based, REST API system. Currently, only certain data sets are updatable through the API, although future versions will contain more updatable objects. The API can output JSON or XML. This document describes all endpoints for the API and how to construct the HTTP Requests.<p>

> NOTE: This document is intended for use by vendors wishing to interface with the Aeries API. The current version is v5. This version  has been updated to allow for the new Flexible scheduling model using Section-Staff records instead of Teachers. At schools using 
> the new Flex model, TCH records are not used and may not exist, so adjustments may have to made to vendors' code. Teacher number (TCH.TN) is no longer used and PermanentID has been changed to StudentID throughout the API. Details for every API endpoint are described in each section. All previous versions 1-4 are still available.


Things to Know Before You Begin

Join the "Interfacing With Aeries" Google Group for updates and information about the Aeries API: [Interfacing With Aeries](https://groups.google.com/forum/#!forum/interfacing-with-aeries) and [Subscribe](interfacing-with-aeries+subscribe@googlegroups.com)
Every customer using Aeries will have an independent website with an independent URL. This includes BOTH districts hosted by Aeries Software and those who host their own installations of Aeries.
Not every customer has a public-facing instance of Aeries for you to tap into the API through. Districts have a wide range of options in the implementation of the Aeries SIS. The vast majority have some public-facing instance of Aeries in their environment, but not EVERY.
Some districts will only have an instance of Aeries available to you through a Windows-authenticated URL. This happens when a district is not using the Aeries Parent/Student Portal and only has an instance of Aeries for Teachers accessible through the Internet and that access point is secured using Active Directory Integration / Windows Authentication (i.e., no anonymous access to the website).
The majority of customers will use SSL, though some may not. So, besides needing to code for both anonymous and Windows-authenticated requests, you need to code for both HTTPS and HTTP. Aeries Software ALWAYS recommends the use of HTTPS, but self-hosted customers are responsible for this decision.

<strong>Certificate and Security Permissions</strong>.

Each district will issue you a certificate that is unique for that district. 

*A "certificate" for purposes of interacting with the Aeries API is a 32-character alphanumeric string.*

When a district creates a certificate for a vendor, they can grant access to certain APIs and restrict access to others. This document describes the security area that each endpoint requires. It would be prudent to document the security areas that you need access to and relay that information to your customers.

It is VERY important to NEVER share or expose your district-issued certificate to end users. That includes being output to the client in Javascript or HTML. All uses of the certificate should be from your server to the district's Aeries web server.

The Aeries demo website can be used to test your [Code](https://demo.aeries.net/aeries/). The certificate for the demo website that you can use is "477abe9e7d27439681d62f4e0de1f5e1". You can also log into the demo website using the username "admin" and password "admin". <strong>Your certificate is case-sensitive!</strong>

#### 1.1 Project Objective
 
We need to raise the trust in the quality of the project as high as possible before releasing it to customers.
The scope of the final project for <strong>ITF Manual Testing Course</strong> is to use all gained knowledge through the course and apply them in practice, using an available application. 

Application [Under Test](https://www.aeries.com/solutions/demo/) 

Application [Documentation](https://support.aeries.com/support/solutions/articles/14000077926-aeries-api-full-documentation/)

#### 1.2 Functionalities in scope
 
Building a request , School Information , Pre-Enrollment of Students , Students grades , Attendance and Enrollment , Scheduling and Gradebook .

- The features in scope for testing:
  
  Successful authentication in both the parent and student portals ;
  
  Ability for parents/students to personally manage notification preferences ;
  
  Ability to allow notifications/alerts to come via SMS ;
  
  Administrators' ability to assign specific notifications to specific groups or individuals ;
  
  Integrate notifications into your new workflow process ;
  
  Ability to create personal notifications/reminders for tasks .
  
- Testing types used:
  
  Functional Testing ;
  
  Positive Testing ;
  
  Negative Testing ;
  
  GUI testing .


#### 1.3 Functionalities and tests out of scope

- The features out of scope: Security Improvements ,there is no application to test, except this site
- Non-functional testing like stress, performance is beyond scope of this project.
- No QA support for mobile applications developed. Only web applications will be tested.
- Automation testing is beyond scope.


  
 > ## 2. Test process

#### 2.1 Test planning

Roles and responsibilities

| TESTER | Laura Scutariu | I test: Account authentication for parents/students, HTTPS, HTTP | 
| --- | --- | --- |

##### Entry criteria:
- functional business specifications are defined ;
- testing environment is up and running ;
- smoke test passed (being the most basic type of test, this is a very important entry criteria in the process of testing).

##### Exit criteria:
- all test cases have been executed ;
- 90% of tests are passed ;
- no Critical issues/bugs have Open status (All unresolved bugs have low priority and low severity) ;
- exploratory testing performed on the features: Windows authentication , HTTPS, HTTP ;
- update tests are 100% passed (update tests will not generate other new issues that impact the application).
  
##### Risks:
- user data (school information,students grades,staff information, etc) might be impacted with update tests ;
- stability risks [crashes, disconnects,(The certificate is case sensitive) etc)] ;
- IE browser might have performance issues ;
- lack of experience of the QA team ;
- short deadline of Zephyr Squad trial ;
- unavailability of test environment
- validation constraints on the fields might be too restrictive to the end-user.
  
#### 2.2 Test analysis 

- The testing process will be done based on the requirements for features: using Section-Student/Parent records,adjustments may have to made to vendors' code,Windows-authenticated requests,HTTPS and HTTP ;
- we plan on running a full regression test on the current version .

#### 2.3 Test design

- All the test cases are written and reviewed ;
- Functional test cases will be created in Zephyr Squad using Jira as Test Management tool ;
- GUI test cases will be created in Zephyr Squad using Jira as Test Management tool .

#### 2.4 Test implementation

- all the test data is available and reviewed (test data= email examples, password examples, students grades , school information , staff information ,gradebook ) ;
- this test run includes only regression testing in which we will run tests that have the highest priority, this will be main priority ;
- Cycle summary was created and test cases were added to the cycle summary ;
- Test environment is up and running: (https://www.aeries.com/solutions/demo/) .
  
#### 2.5 Test execution

- The tests will be executed on the top 4 used browsers: Chrome, Mozilla Firefox, Microsoft Edge, Apple Safari. If time will be available we will extend tests on Opera and Brave browsers ;
- Test cases will be executed on the created Test Cycle Summary ;
- Bugs will be reported based on the failed tests .
  
#### 2.6 Test closure

- At least 90% of tests are passed ;
- No Critical issues have Open status ;
- Exploratory testing have been performed .

#### 2.7 Test monitoring and control
- Various periodic reports (daily/weekly/bi-weekly) will be generated to reflect the current status of the testing process.
   

> ## 3. Test deliverables	

#### 3.1 Test plan - link to test plan
- The Test Plan is designed to describe all the details of testing for the following features: Ability for faculty/staff to personally manage notification preferences; Ability to allow notifications/alerts to come via SMS; Administrators' ability to assign specific notifications to specific groups or individuals; Integrate notifications into your new workflow process; Ability to create personal notifications/reminders for tasks ;
- The plan identifies the items and the features to be tested, the type of testing to be performed, the roles and responsibilities for testing process, the risks associated with the plan, the resources and schedule required to complete testing. 

#### 3.2 Test conditions 
- we will use test environment ;
- testing using new accounts and older account is necessary ;
- The following test conditions could be found here:

  

#### 3.3 Test cases
 - The test cases with steps could be found here:
   
  [Ability for parents/students to personally manage notification preferences](https://laurascutariu.atlassian.net/browse/AFPT-3)
  
  [The possibility to allow notifications/alerts to come via SMS to both students and parents](https://laurascutariu.atlassian.net/browse/AFPT-4)
  
  [Ability to create personal notifications/reminders for tasks](https://laurascutariu.atlassian.net/browse/AFPT-5)
  
  [Verify that a student can login into the application with credentials](https://laurascutariu.atlassian.net/browse/AFPT-6)
  
  [As a Student/Parent I want to be able to access the website from different devices](https://laurascutariu.atlassian.net/browse/AFPT-7)
  
  [Verify that as a Student I cannot create a new account with an email that is already used](https://laurascutariu.atlassian.net/browse/AFPT-8)
  
  [Verify that as a Student I cannot create a new account with a weak password](https://laurascutariu.atlassian.net/browse/AFPT-9)
  

#### 3.4 Daily/Weekly/Bi-weekly test summary report

 
![test summary report](https://github.com/LauraScutariu/Proiect-Practic-Testare-Manuala-2/blob/d9a6db49cadd86a2653f8bb72982698a3a871465/Captura%CC%86%20de%20ecran%20din%202023-07-23%20la%2012.32.11.png)
    
#### 3.5 Traceability matrix
 - Link to traceability matrix *vom incarca pe github un screenshot din Jira
   
#### 3.6 Test case results
 -  The test cases results could be found here: *vom adauga link catre document cu test cases executate si incarcate pe github. Test cases results vor fi exportate din Jira.
   
#### 3.7 Bugs report
 - The bugs reported could be found here: *vom adauga link catre document cu defectele raportate in Jira pt test case-urile failed
   
#### 3.8 Test completion report
 - link to test completion report (Test cases ran, how many TC are passed and how many are failed)
   *vom adauga screenshot cu test completion report din Jira la sfarsitul testarii (toate test case-urile au fost executate)
   
#### 3.9 Schedule
 - we have 10 days of testing
 - we have 30 functional and GUI tests
 - in order to finish the regression run we would need to run an ~ of 3 tests/day
This is my project at the end of the September 2023 Manual Testing Course. Enjoy!
