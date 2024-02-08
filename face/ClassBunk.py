from base64 import encode
from pydoc import classname
from sre_constants import SUCCESS
from time import time
import cv2
import numpy as np
import face_recognition 
import os
from datetime import date, datetime
from os import listdir
from os.path import isfile, join
from twilio.rest import Client

path = "face/ImageAttendance"
images = []
classname = []
mylist = os.listdir(path)

for cls in mylist:
    currentImage = cv2.imread(f'{path}/{cls}')
    images.append(currentImage)
    classname.append(os.path.splitext(cls)[0])
print(classname)

def sendSMS(name):
   account_sid = "ACed5dd0d65265247326751f90eb5e5e64"
   auth_token = "bfa1d55ee82e6a86d830e436376f6f89"
   client = Client(account_sid, auth_token)
   message = client.messages.create(
                             body = name+' Spotted out side the class',
                             from_ = '+12407700020',
                             to = '+919786251495'
                         )


def findEncoding(images):
    EncodeList = []
    for img in images:
        img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
        encode = face_recognition.face_encodings(img)[0]
        EncodeList.append(encode)
    return EncodeList

def markAttendance(name):
    today = date.today()
    datetoday = today.strftime("%d-%m-%y")
    if not isfile(f'csvattendance/{datetoday}.csv'):
        print("file not exists")
        f = open(f'csvattendance/{datetoday}.csv','w+')
        f.close()

    with open(f'csvattendance/{datetoday}.csv', 'r+') as f:
        myDataList = f.readlines()
        namelist = []
        for line in myDataList:
            entry = line.split(',')
            namelist.append(entry[0].replace(' ',''))
        if(name not in namelist):
            print("Entered name: ", name)
            sendSMS(name)
            now = datetime.now()
            time = now.strftime('%H:%M:%S')
            f.writelines(f' {name}, {time}\n')

encodelistKnown = findEncoding(images)
print("Encode done")

capture = cv2.VideoCapture(0)

while True:
    success, img = capture.read()
    imgSmall = cv2.resize(img, (0, 0), None, 0.25, 0.25)
    imgSmall = cv2.cvtColor(imgSmall, cv2.COLOR_BGR2RGB)

    facelocCurFrame = face_recognition.face_locations(imgSmall)
    encodeCurFrame = face_recognition.face_encodings(imgSmall, facelocCurFrame)

    for encodeFace, faceLoc in zip(encodeCurFrame, facelocCurFrame):
        matches = face_recognition.compare_faces(encodelistKnown, encodeFace)
        faceDist = face_recognition.face_distance(encodelistKnown, encodeFace)
        matchIndex = np.argmin(faceDist)

        if matches[matchIndex]:
            name = classname[matchIndex].upper()
            y1, x2, y2, x1 = faceLoc
            y1, x2, y2, x1 = y1 * 4, x2 * 4, y2 * 4, x1 * 4
            cv2.rectangle(img, (x1, y1), (x2, y2), (0, 0, 255), 2)
            cv2.rectangle(img, (x1, y2 - 35), (x2, y2), (0, 0, 255), cv2.FILLED)
            cv2.putText(img, name, (x1 + 6, y2 - 6), cv2.FONT_HERSHEY_COMPLEX, 1,(255, 255, 255), 2)            
            markAttendance(name)

    cv2.imshow('webcam', img)
    cv2.waitKey(1)

