require 'sinatra'
require_relative './model/page.rb'

set :public_folder, __dir__ + '/assets'

get '/' do
  # page = Page.new
  # page.all.to_json
  erb :page, :layout => :layout
end
