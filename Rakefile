require_relative 'config/environment.rb'
require 'sinatra/activerecord/rake'

task :console do
  Pry.start
end

task :environment do
  require_relative "./config/environment.rb"
end

task :console => :environment do
  Pry.start
end
