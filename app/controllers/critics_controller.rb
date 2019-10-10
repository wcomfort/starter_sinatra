class CriticsController < Sinatra::Base

    set :views, "app/views/critics"
    set :method_override, true

    get '/critics' do 
        @critics = Critic.all
        erb :index
    end

    get '/critics/new' do 
        erb :new
    end

    get '/critics/:id' do 
        @critic = Critic.find(params[:id])
        erb :show
    end

    post '/critics' do 
        name = params[:name]
        soc_med = params[:soc_med]
        @critic = Critic.create(name: name, soc_med: soc_med)
        redirect "/critics/#{@critic.id}"
    end

    get '/critics/:id/edit' do
        @critic = Critic.find(params[:id])
        erb :edit
    end

    patch '/critics/:id' do 
        @critic = Critic.find(params[:id])
        @critic.update(name: params[:name],
                     soc_med: params[:soc_med])
        redirect "/critics/#{@critic.id}"
    end

    delete "/critics/:id" do 
        @critic = Critic.find(params[:id])
        @critic.destroy
        redirect "/critics"
    end

end