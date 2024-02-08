from os import listdir
from datetime import datetime
from os.path import isfile, join
from timedifference import timediff

def createcsvfile():
    mypath = 'csvattendance'
    onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]
    print(onlyfiles)
    today = datetime.today()
    datetoday = today.strftime("%d-%b-%Y")
    print(datetoday)

    if not isfile(f'csvattendance/{datetoday}.csv'):
        print("file not exists")
        f = open(f'csvattendance/{datetoday}.csv','w+')
        f.close()
    else:
        print("file exists")

createcsvfile()