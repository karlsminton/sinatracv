require 'active_record'
require 'json'

unparsed = File.read('../conf/db.json')
config = JSON.parse(unparsed)
ActiveRecord::Base.establish_connection(config)

class Page < ActiveRecord::Base
end
