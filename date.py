import datetime

with open("data.txt", "w") as f:
    f.truncate(0)
    f.write(str(datetime.datetime.now()))

