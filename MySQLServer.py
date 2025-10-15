import sqlite3
try:
    conn = sqlite3.connect("alx_book_store.db")

    cursor = conn.cursor()
    
    print("Database 'alx_book_store' created successfully!")
    
except sqlite3.Error as e:
    print(f"SQLite Error: {e}")

