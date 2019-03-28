*** Settings ***
Library  course_mgr
Library  SeleniumLibrary

*** Test Cases ***
#将所有的课程名输出到日志文件中
#    @{var}=  listCourse
#    :FOR  ${course}  IN  @{var}
#    \  log to console  ${course}
#     ${expected}=      Create List     Python    Selenium
#    should be true     @{var}==${expected}

获得所有热销单品的名称，打印在log报表中
#    @{phones}=  gethuawei
#    :FOR    ${phone}  IN    @{phones}
#    \  log to console  ${phone}
    open browser  https://www.vmall.com/index.html  chrome
    set selenium implicit wait  5
    ${eles}=  Get WebElements  xpath=//div[@class="b clearfix"]//div[@class="grid-title"]
    :FOR    ${ele}  IN  @{eles}
    \   log to console   ${ele.text}
