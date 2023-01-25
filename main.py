import psycopg2

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

    for row in cur1.fetchall():
        print(row)

print()
with conn:
    print ("Database opened successfully")
    cur2 = conn.cursor()
    print('2. \n')

    cur2.execute(query_2)

    for row in cur2.fetchall():
        print(row)

print()
with conn:
    print ("Database opened successfully")
    cur3 = conn.cursor()

    print('3. \n')
    cur3.execute(query_3)

    for row in cur3.fetchall():
        print(row)
