import requests
import time
import json
import os

time.sleep(20)
with open("/app/script.txt", "r") as file:
    content = file.read().replace('\n', ' ')
lines = content.split('\n')
script = []
for line in lines:
    script += line.split('.')
script = [x+'.' for x in script]
url = f"http://slskd-chat-bot:1024/api/v0/rooms/joined/{os.getenv('SLSKD_ROOMS')}/messages"
headers = {
    'accept': '*/*',
    'Content-Type': 'application/json'
}

for message in script:
    data = json.dumps(message)
    try:
        response = requests.post(url, headers=headers, data=data)
        print(response)
    except:
        print("Couldn't Reach Chat Bot")
    time.sleep(0.5)
