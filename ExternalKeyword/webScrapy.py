import requests
import re
from bs4 import BeautifulSoup
from lxml import html

url = "https://scrapethissite.com/pages/forms/"
# url = "https://scrapethissite.com/pages/forms/"
page = requests.get(url)
htmlcontent = page.content
soup = BeautifulSoup(htmlcontent,'html.parser')
print(soup)
soup_tbody  = soup.find_all('table',class_="table")
print(soup_tbody)
# tree = html.fromstring(page.content)
# for section in tree.xpath('//table/tbody/tr'):
#     print(section)
