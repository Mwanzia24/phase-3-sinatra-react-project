class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to the Drinks Tracker API!" }.to_json
  end
  
  # Example route for retrieving all drinks
  get "/drinks" do
    drinks = Drink.all
    drinks.to_json
  end

  # Example route for retrieving a specific drink
  get "/drinks/:id" do
    drink = Drink.find(params[:id])
    drink.to_json
  end
  
  # Example route for creating a new drink
  post "/drinks" do
    drink = Drink.create(params)
    drink.to_json
  end
  
  # Example route for updating a drink
  put "/drinks/:id" do
    drink = Drink.find(params[:id])
    drink.update(params)
    drink.to_json
  end
  
  # Example route for deleting a drink
  delete "/drinks/:id" do
    drink = Drink.find(params[:id])
    drink.destroy
    { message: "Drink deleted successfully" }.to_json
  end

end
