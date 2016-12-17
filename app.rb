require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb (:'pirates/new')
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight],params[:pirate][:height])
      @ships = Ship.all
      params[:pirate][:ships].each {|boat| Ship.new(name: boat[:name], type: boat[:type], booty: boat[:booty])}
      erb (:'pirates/show')
    end

  end
end