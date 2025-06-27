import mysql.connector
import getpass

try:
    my_db = mysql.connector.connect(
        host="localhost",
        user="root",
        password=None,
    )
    create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
    cursor = my_db.cursor()
    cursor.execute(create_db_query)
    cursor.close()
    my_db.close()
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as error:
    print("Error: ", error)
