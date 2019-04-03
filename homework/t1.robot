*** Settings ***
Library  SeleniumLibrary
Library  Dialogs
Library  mylibs
Suite Setup  deleteAllcourser
Suite Teardown  log to console  /n结束

*** Test Cases ***
全空添加课程
    OPEN BROWSER  http://localhost/mgr/login/login.html   chrome
    set selenium implicit wait  5
    input text  id=username     auto
    input text  id=password     sdfsdfsdf\n
    click button  xpath=//button[@ng-click="showAddOne=true"]
    ${cousername}   get value from user   课程名   python
    input text  xpath=//input[@ng-model="addData.name"]  ${cousername}
    ${detail}   get value from user   详情描述  ${cousername}详情描述
    input text  xpath=//textarea   ${detail}
    click button  xpath=//button[@ng-click="addOne()"]
    ${cousername1}=   Get WebElement  xpath=(//span[@ng-if="!one.editing"])[2]
    log to console  ${cousername1.text}
    log to console  ${cousername}
    should be true  $cousername==$cousername1.text