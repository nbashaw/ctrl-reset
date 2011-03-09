class CtrlReset < Sinatra::Base

  # Sinatra configuration
  enable :static
  set :public, 'public'
  config.middleware.use Rack::ForceDomain, ENV["DOMAIN"]

  # Haml configuration
  set :haml, {:format => :html5}
  
  get '/css/:sheet.css' do
    scss params[:sheet].to_sym
  end
  
  get '/' do
    erb :index
  end
  
  get '/team' do
     erb :team
   end
  
  get '/contact' do
    erb :contact
  end

  not_found do
    redirect '/'
  end

end