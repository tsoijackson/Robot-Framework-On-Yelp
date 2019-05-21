# Robot-Framework-On-Yelp

![](example.gif)

- install Python3
- install robot framework: pip3 install robotframework
- check if robot framework is installed: robot --version
- install selenium for robot framework: pip3 install robotframework-selenium2library 
- move chromedriver to PATH
    - navigate to resources folder: cd resources
    - copy chromdriver to PATH bin folder: cp chromedriver /usr/local/bin
- navigate back out to project folder: cd ..
- run tests: robot tests
- view logs or test reports through log.html or report.html