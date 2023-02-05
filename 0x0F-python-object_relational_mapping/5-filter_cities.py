#!/usr/bin/python3
"""
Get listed State in the command line
and print
"""
import MySQLdb
import sys
if __name__ == "__main__":
    db = MySQLdb.connect(user=sys.argv[1],
                         password=sys.argv[2], database=sys.argv[3])
    c = db.cursor()
    my_list = []
    for i in sys.argv[4]:
        if i == ";":
            exit(1)
    c.execute("""SELECT cities.name
                FROM cities
                JOIN states ON state_id = states.id
                WHERE states.name = '{}'""".format(sys.argv[4]))
    [my_list.append(i) for i in c.fetchall()]
    length = len(my_list)
    if length != 0:
        for i in range(len(my_list)):
            if i != length - 1:
                print("{}, ".format(my_list[i][0]), end="")
            else:
                print("{}".format(my_list[i][0]))
    else:
        print()
