require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  encoding: 'utf8',
  database: 'curriculum',
  username: 'vitae',
  password: 'password'
)

class Page < ActiveRecord::Base
end
