require 'active_record'
require 'json'

unparsed = File.read('./conf/db.json')
config = JSON.parse(unparsed)

task :test do
  puts "test works"
end

task :migrate  do
  ActiveRecord::Base.establish_connection(config)
  ActiveRecord::MigrationContext.new('migrations/', ActiveRecord::SchemaMigration).migrate
  Rake::Task['schema'].invoke
  puts "Migration complete."
end

task :schema do
  ActiveRecord::Base.establish_connection(config)
  filename = "migrations/schema.rb"
  File.open(filename, "w:utf-8") do |file|
    ActiveRecord::SchemaDumper.dump(ActiveRecord::Base.connection, file)
  end
end
