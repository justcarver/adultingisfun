require 'csv'

namespace :import do

  desc "Import tasks from csv"
  task :tasks, [:path_to_file] => :environment do |t, args|
    path_to_file = File.join Rails.root, args[:path_to_file]
    counter = 0

    CSV.foreach(path_to_file) do |row|
      title, description, points, expiration, category, active = row
      task = Task.create( title: title,
			  description: description, 
			  points: points.to_i,
			  expiration: Date.strptime(expiration, "%m/%d/%Y"),
			  category: category,
			  active: Date.strptime(expiration, "%m/%d/%Y")
      puts "#{title} - #{task.errors.full_messages.join(",")}" if task.errors.any?
      counter = counter + 1 if task.persisted?
    end

    puts "Imported #{counter} tasks"
  end
end

