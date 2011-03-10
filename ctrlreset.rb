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
  Pony.mail :to => 'Nathan Bashaw <nbashaw@gmail.com>',  
     :from => 'Ctrl+Reset Contact Form <nbashaw@gmail.com>',
     :subject => 'Ctrl+Reset Contact Form',
     :body=> "#{params[:message]}, --- Contact Address #{params[:email]}",
     :via => :smtp, :smtp => {
      :host => 'smtp.gmail.com',
      :port => '587',
      :user => ENV['GMAIL_USERNAME'],
      :password => ENV['GMAIL_PASSWORD'],
      :auth => :plain,
      :domain => 'gmail.com'
     },
     :headers => { "Reply-To" => params[:email] }
     redirect '/thanks', 303
end  

get '/thanks' do
  erb :thanks
end

not_found do
  erb :404
end
