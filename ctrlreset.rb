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
