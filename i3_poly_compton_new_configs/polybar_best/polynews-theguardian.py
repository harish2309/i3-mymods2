#!/usr/bin/python

import requests

api_key = "3b10a782-b70e-46c1-9738-cb2c7fbb6557"

try:
    data = requests.get("https://content.guardianapis.com/search?api-key="+api_key).json()
	
    sectionName = data['response']['results'][0]["sectionName"]
    webTitle = data['response']['results'][0]["webTitle"]

    print(sectionName+': '+webTitle)
	
except requests.exceptions.RequestException as e:
    print ('Something went wrong!')
