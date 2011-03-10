# Shotgun command-line switches
#\ -s thin

# load up the bundled environment
require 'rubygems'
require 'bundler/setup'

# force a canonical domain
require 'rack/force_domain'
use Rack::ForceDomain, ENV["DOMAIN"]

# start your engines
require './ctrlreset'
run Sinatra::Application
