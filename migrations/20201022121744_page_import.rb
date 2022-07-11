require 'json'
require_relative '../model/page'

class PageImport < ActiveRecord::Migration[7.0]
  def up
    path = Dir.glob('./conf/page_data.json').first
    file = File.read(path)
    config = JSON.parse(file)

    config['data']['children'].each do |page|
      Page.create(title: page.title, identifier: page.identifer, content: page.content)
    end
  end
end
