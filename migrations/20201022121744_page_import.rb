require 'json'
require_relative '../model/page'

class PageImport < ActiveRecord::Migration[7.0]
  def up
    path = Dir.glob('./conf/page_data.json').first
    file = File.read(path)
    pages = JSON.parse(file)

    pages['pages'].each do |page|
      Page.create(title: page['title'], urlkey: page['urlkey'], content: page['content'])
    end
  end
end
