require_relative 'config/environment.rb'
require 'sinatra/activerecord/rake'

task :console do
  Pry.start
end

desc 'provides access to environment'
task :environment do
  require_relative './config/environment'
end

desc 'drop into the Pry console'
task :console => :environment do
  Pry.start
end
