from selenium import webdriver
import time

def deleteAllcourser():
    driver = webdriver.Chrome(r'F:\webdrivers\chromedriver.exe')
    driver.implicitly_wait(5)
    driver.get('http://localhost/mgr/login/login.html')
    driver.find_element_by_id('username').send_keys('auto')
    driver.find_element_by_id('password').send_keys('sdfsdfsdf\n')
    driver.find_element_by_link_text('课程').click()
    while True:
        deleles = driver.find_elements_by_xpath('//button[@ng-click="delOne(one)"]')
        if deleles:
            deleles[0].click()
            driver.find_element_by_xpath('//button[@class="btn btn-primary"]').click()
            time.sleep(1)
        else:
            print('全空')
            break
    driver.close()