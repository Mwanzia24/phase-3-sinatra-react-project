# db/migrate.rb

require 'sqlite3'

db = SQLite3::Database.new('development.sqlite3')

db.execute <<-SQL
  CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT
  );
SQL

db.execute <<-SQL
  CREATE TABLE drinks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    description TEXT
  );
SQL
