require 'sinatra'
set :env, :production
disable :run
require './index'
run Sinatra::Application

