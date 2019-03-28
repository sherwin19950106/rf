import requests
from selenium import webdriver

def listCourse():
    url = "http://localhost/api/mgr/sq_mgr/"
    querystring = {"action": "list_course", "pagenum": "1", "pagesize": "20"}
    res = requests.get(url,params=querystring)
    return [one['name'] for one in  res.json()['retlist']]

def gethuawei():
    driver = webdriver.Chrome('F:\webdrivers\chromedriver.exe')
    driver.implicitly_wait(5)
    driver.get('https://www.vmall.com/index.html')
    xpath = '//div[@class="b clearfix"]//div[@class="grid-title"]'
    eles = driver.find_elements_by_xpath(xpath)
    return [ele.text for ele in eles]
