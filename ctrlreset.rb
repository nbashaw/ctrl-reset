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

post '/mail' do
  Pony.mail :to => 'nbashaw@gmail.com',  
     :from => "#{params[:email]}",
     :subject => "Contact Form",
     :body=> "#{params[:message]}, --- Contact Address #{params[:email]}",
     :via => :smtp
     redirect '/thanks', 303
end  

get '/thanks' do
  erb :thanks
end

not_found do
  erb :404
end
