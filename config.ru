# Shotgun command-line switches
#\ -s thin

# load up the bundled environment
require 'rubygems'
require 'bundler/setup'

# dependencies
require 'sinatra'
require 'haml'
require 'rack/force_domain'
require './ctrlreset'

# force a canonical domain
use Rack::ForceDomain, ENV["DOMAIN"]

# start your engines
run Sinatra::Application
