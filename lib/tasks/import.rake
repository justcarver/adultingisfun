require 'csv'

namespace :import do

  desc "Import tasks from csv"
  task :tasks, [:path_to_file] => :env do |t, args|
    path_to_file = args[:path_to_file]
    CSV
  end
end
