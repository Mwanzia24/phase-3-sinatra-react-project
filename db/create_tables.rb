# db/create_tables.rb

require 'sqlite3'

db = SQLite3::Database.new('development.sqlite3')

# Create the users table
db.execute <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT
  );
SQL

# Create the drinks table
db.execute <<-SQL
  CREATE TABLE IF NOT EXISTS drinks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    description TEXT
  );
SQL
