# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'
require 'CSV'

Rails.application.load_tasks




desc "Export Exercice in CSV"
task :exportExercice do
  Exercice.to_csv
end
