import os

print("Current working directory:")
print(os.getcwd())

print("\nFiles in current directory:")
print(os.listdir())


import pandas as pd
import sqlite3

# Load the cleaned dataset
df = pd.read_csv("data/processed/cleaned_superstore.csv")

# Create/connect to SQLite database
conn = sqlite3.connect("database/retail_sales.db")

# Store data in SQLite table
df.to_sql("retail_sales", conn, if_exists="replace", index=False)

conn.close()

print("Database created successfully!")
print("Table name: retail_sales")