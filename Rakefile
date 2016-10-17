# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

require File.expand_path('../config/application', __FILE__)

if ENV['CIRCLE_ARTIFACTS']
  require 'coveralls/rake/task'
  Coveralls::RakeTask.new
end