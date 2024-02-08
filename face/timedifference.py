from datetime import datetime

def timediff():
    s1 = '10:30:00'
    s2 = '11:30:00' # for example
    FMT = '%H:%M:%S'
    tdelta = datetime.strptime(s2, FMT) - datetime.strptime(s1, FMT)
    print(tdelta)