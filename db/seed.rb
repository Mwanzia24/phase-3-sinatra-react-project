# db/seed.rb

require 'sqlite3'

db = SQLite3::Database.new('development.sqlite3')

# Seed data for the users table
db.execute <<-SQL
  INSERT INTO users (name, email)
  VALUES ('Tom Makau', 'Makautom@gmail.com'),
         ('Kate saya', 'Katesaya@gmail.com');
SQL

# Seed data for the drinks table
db.execute <<-SQL
  INSERT INTO drinks (name, description)
  VALUES ('Coffee', 'A hot beverage made from roasted coffee beans.'),
         ('Tea', 'A hot or cold beverage made from the leaves of the Camellia sinensis plant.');
         ('Alcohol','A beverage is a drink that contains ethanol, a type of alcohol that acts as a drug and is produced by fermentation of grains, fruits, or other sources of sugar.)
SQL
