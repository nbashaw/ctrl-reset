# Shotgun command-line switches
#\ -s thin -o 0.0.0.0

require 'rubygems'
require 'bundler'
Bundler.setup

require 'sinatra'
require 'haml'

#use Rack::ForceDomain, ENV["DOMAIN"]

require './main.rb'
run CtrlReset
