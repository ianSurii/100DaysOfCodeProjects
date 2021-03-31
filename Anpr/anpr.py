import requests
from pprint import pprint
regions = ['Ke', 'it'] # Change to your country
with open('/home/astra/Pictures/datset/car2.jpeg', 'rb') as fp:
    response = requests.post(
        'https://api.platerecognizer.com/v1/plate-reader/',
        data=dict(regions=regions),  # Optional
        files=dict(upload=fp),
        headers={'Authorization': 'Token ff2a127a5155885e752f7bb2b10a035f4496c8f5'})
pprint(response.json())

# Calling with a custom engine configuration
import json
with open('/home/astra/Pictures/datset/car2.jpeg', 'rb') as fp:
    response = requests.post(
        'https://api.platerecognizer.com/v1/plate-reader/',
        data=dict(regions=['au'], config=json.dumps(dict(region="strict"))),  # Optional
        files=dict(upload=fp),
        headers={'Authorization': 'Token ff2a127a5155885e752f7bb2b10a035f4496c8f5'})
