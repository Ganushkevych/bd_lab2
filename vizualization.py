import psycopg2
import matplotlib.pyplot as plt

username = 'postgres'
password = 'postgres'
database = 'postgres'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT TRIM(issue_title), TRIM(rating)
FROM issue, info
WHERE issue.info_id = info.info_id
ORDER BY rating
'''

query_2 = '''
SELECT TRIM(issue_title), price
FROM issue, info
WHERE issue.info_id = info.info_id
ORDER BY price
'''

query_3 = '''
SELECT TRIM(issue_title), TRIM(imprint)
FROM issue, authors
WHERE issue.authors_id = authors.authors_id
ORDER BY imprint desc
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    print ("Database opened successfully")
    cur1 = conn.cursor()

    print('1. \n')
    cur1.execute(query_1)

    X = []
    Y = []
    for row in cur1:
        X.append(row[0])
        Y.append(row[1])
    plt.bar(X, Y)
    plt.show()

print()
with conn:
    print ("Database opened successfully")
    cur2 = conn.cursor()
    print('2. \n')

    cur2.execute(query_2)

    X = []
    Y = []
    for row in cur2:
        X.append(row[0])
        Y.append(row[1])
    x, y = plt.subplots()
    y.pie(Y, labels=X, autopct='%1.1f%%')
    plt.show()
    


print()
with conn:
    print ("Database opened successfully")
    cur3 = conn.cursor()

    print('3. \n')
    cur3.execute(query_3)
    X = []
    Y = []
    for row in cur3:
        X.append(row[0])
        Y.append(row[1])
    plt.bar(X, Y)
    plt.show()