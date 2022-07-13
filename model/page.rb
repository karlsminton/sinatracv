require 'active_record'
require 'json'

path = File.expand_path('../conf/db.json', __dir__)
unparsed = File.read(path)
config = JSON.parse(unparsed)
ActiveRecord::Base.establish_connection(config)

class Page < ActiveRecord::Base
end
