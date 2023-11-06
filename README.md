# Robot Framework Project with Pabot Parallel Execution and Page Object Model (POM)

## Table of Contents

1. [Introduction](#introduction)
2. [Built With](#built-with)
2. [Design Pattern](#design-pattern)
3. [Prerequisites](#prerequisites)
4. [Installation](#installation)
5. [Web Tests Execution](#web-tests-execution-with-pabot)
6. [APIs Tests Execution](#apis-test-run-with-pabot)
7. [Reporting](#reporting)
8. [Contact](#contact)

## introduction

This README provides documentation for a Robot Framework project that utilizes Pabot for parallel test case execution and follows the Page Object Model (POM) design pattern. Pabot enables concurrent test case execution, reducing execution time, while POM promotes maintainability and reusability of test automation code by separating test logic from the page structure.

## Built With
* [Python](https://www.python.org/)
* [Robot Framework](https://robotframework.org/)
* [Selenium](https://www.selenium.dev/)
* [Requests](https://pypi.org/project/requests/)

<!-- Design Pattern -->
## Design Pattern
This project is build based on the **Page Object Model**, please follow this design pattern in adding new resources 
or test cases.

For More info about page object design pattern please read [POM](https://www.selenium.dev/documentation/test_practices/encouraged/page_object_models/)

Syntax and Scripting of test cases should also follow the best practices of robot framework => 
[Best Practices](https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst) 


## Prerequisites

Check that you have python installed on your machine, open any terminal and check with the below command
* python
```sh
python3 -version
```

After that check that pip which is the python package manager is installed as well, open any terminal and 
type the below command
* pip
```sh
pip3 -version
```

## Installation

1. Clone the repo
```sh
git clone https://gitlab.com/tempo/qa/e-comm_web_automation.git
```
2. Create a virtual environment for python, and activate it
```sh
pip3 install virtualenv
virtualenv venv
source venv/bin/activate
```
3. Install pip packages
```sh
pip3 install -r Requirements.txt
```
## Web Tests Execution with PABOT

1. Run Test in Parallel execution mode with chrome browser 
```sh
pabot --testlevelsplit  --processes 8  --argumentfile Resources/ExecutionArgs/ChromeExecutionArgs.robot  TestCases 
```
Replace 8 with the number of parrallel browsers you want to open

2. Run Test in Parallel execution mode with firefox browser 
```sh
pabot --testlevelsplit  --processes 8  --argumentfile Resources/ExecutionArgs/FireFoxExecutionArgs.robot  TestCases 
```

## APIs Test Run with PABOT

1. Run Test in Parallel execution fir APIs
```sh
pabot --testlevelsplit  --processe 8  --argumentfile Resources/ExecutionArgs/APIsExecutionArgs.robot  TestCases 
```



## Reporting

After the parallel execution, the following report files are generated in the `Results/` directory:

- `output.xml`: An XML file containing test results.

- `log.html`: A detailed HTML log file.

- `report.html`: An HTML report summarizing the test execution.

Open `log.html` in your web browser to view the aggregated test results.


<!-- CONTACT -->
## Contact
abdelhameed elnaggar - abdalhamid.aly@gmail.com