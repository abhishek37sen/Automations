# 1.
# Selenium
# problem
import BY as BY
from selenium import webdriver

# https: // testautomationpractice.blogspot.com /
# from dynamic webtable, print
#
# Memory(MB)
# for Chrome, Safari and Firefox browser
# if any browser name is not available in the table, print data not available for that browser.
#

from selenium.webdriver.common.by import By

driver = webdriver.Chrome()
driver.get("https://testautomationpractice.blogspot.com/")
br_web_elements = driver.find_elements(By.XPATH,"//*[text()='Dynamic Web Table']/following-sibling::div//table//tr/td[1]")
br_name = []
for ele in br_web_elements:
    br_name.append(ele.text)
mb_web_elements = driver.find_elements(By.XPATH,"//*[text()='Dynamic Web Table']/following-sibling::div//table//tr/td[4]")
mb_name = []
for ele in mb_web_elements:
    mb_name.append(ele.text)

br_list =['Chrome', 'Safari', 'Firefox']
for i in br_list:
    if i in br_name:
        print(mb_name[br_name.index(i)])
    else:
        print(i,"= data not available for that browser")
driver.close()

# 2.
# Print
# the
# following
# pattern
# on
# screen
# for any value of n.in the following example n=4.
# *
# **
# ***
# ****
# ***
# **
# *
num = input()
for i in range(1,int(num) + 1):
    print('*'*i)
for i in range(int(num) -1 ,0,-1):
    print('*'*i)

#
# 3.
# Reverse
# the
# characters
# of
# word
# without
# reversing
# the
# order
# of
# the
# words.
# Eg: How are you? = > woH era ?uoy
s1 = "How are you"
reverse_s = []
for i in s1.split(' '):
    tem_s2 = ""
    for j in i:
        tem_s2 = j+tem_s2
    reverse_s.append(tem_s2)
s2 = ''
for k in reverse_s:
    s2 = s2 + k + " "
print(s2)