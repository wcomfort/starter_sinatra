class RestaurantsController < Sinatra::Base
    
    set :views, "app/views/restaurants"
    set :method_override, true

    get '/restaurants' do 
        @restaurants = Restaurant.all
        erb :index
    end
    
    get '/restaurants/new' do 
        erb :new
    end

    get '/restaurants/:id' do 
        @restaurant = Restaurant.find(params[:id])
        erb :show
    end

    post '/restaurants' do 
        name = params[:name]
        cuisine = params[:cuisine]
        neighborhood = params[:neighborhood]
        @restaurant = Restaurant.create(name: name, cuisine: cuisine, neighborhood: neighborhood)
        redirect "/restaurants/#{@restaurant.id}"
    end

    get '/restaurants/:id/edit' do
        @restaurant = Restaurant.find(params[:id])
        erb :edit
    end

    patch '/restaurants/:id' do 
        @restaurant = Restaurant.find(params[:id])
        @restaurant.update(name: params[:name],
                     cuisine: params[:cuisine],
                     neighborhood: params[:neighborhood])
        redirect "/restaurants/#{@restaurant.id}"
    end

    delete "/restaurants/:id" do 
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        redirect "/restaurants"
    end



end
