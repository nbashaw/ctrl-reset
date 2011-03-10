# Shotgun command-line switches
#\ -s thin -o 0.0.0.0

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

run CtrlReset
