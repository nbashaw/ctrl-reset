require 'sinatra'
require 'haml'
require 'erb'
require 'pony'

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

#post '/mail' do
#  Pony.mail :to => 'nbashaw@gmail.com',
#            :from => 'me@example.com',
#            :subject => 'Howdy, Partna!'
#end  

not_found do
  redirect '/'
end
