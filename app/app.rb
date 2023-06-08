require 'sinatra'
require 'sinatra/activerecord'

# Set up the database configuration
set :database, { adapter: 'sqlite3', database: 'development.sqlite3' }

# Require the models
Dir.glob('./models/drinks.rb').each { |file| require file }

# Require the controllers
Dir.glob('./controllers/application_controller.rb').each { |file| require file }


# Run database migrations
rake db:migrate

# Seed the database (optional)
rake db:seed
