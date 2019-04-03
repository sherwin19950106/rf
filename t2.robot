*** Settings ***
Library  Dialogs

*** Test Cases ***
RF-if-else if - else
    ${var}=     set variable  hhhhh
    run keyword if  'o' in $var
     ...                        log to console  'o'
     ...    ELSE IF  'a' in $var
     ...                      log to console  'a'
     ...   ELSE   log to console  'none'


while 模拟
    :FOR  ${one}   In RANGE  99999
        \  ${weight}   get value from user   输入   60
        \  continue for loop if  $weight=='cont'
        \  exit for loop if  $weight=='over'
        \  run keyword if  int($weight)>=60   log to console  '\nfat'
            ...  ELSE  LOG TO CONSOLE  'thin'
evaluate 关键字
    ${var}=   create list  hello  world
    ${var}=   evaluate  len($var)
    log to console  ${var}

初始化
    log to console  main
[setup]   log to console  start
[teardown]  log to console  over



