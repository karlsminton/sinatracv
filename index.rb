require 'sinatra'
require_relative './model/page.rb'

set :public_folder, __dir__ + '/assets'

get '/' do
  puts Page.all
  @pages = Page.all
  home = Page.find(1)
  puts home
  @title = home.title
  @content = home.content
  erb :page, :layout => :layout
end

get '/:page' do
  @pages = Page.all

  identifier = params['page']
  page = Page.find_by urlkey: identifier

  if page == nil
    pass
  end

  @title = page.title
  @content = page.content
  erb :page, :layout => :layout
end

not_found do
  status 404
  erb :not_found
end

after do
  ActiveRecord::Base.connection.close
end
