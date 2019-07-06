


desc 'This rake task loads packages_and_functions_dataframe into the rails Flatfile model'

task move: :environment do # Start rake task below
  # Don't forget to name .rake
# How to create a rake task here: https://cobwwweb.com/how-to-write-a-custom-rake-task
# https://stackoverflow.com/questions/876396/do-rails-rake-tasks-provide-access-to-activerecord-models

# ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'yourtablename'")

  require 'csv'


# From: https://stackoverflow.com/questions/825748/how-to-pass-command-line-arguments-to-a-rake-task
if p ENV['data']  == "test"
  csv_text = File.read(Rails.root.join('lib', 'tasks', 'pfd_testfile.csv'))
else
  csv_text = File.read(Rails.root.join('lib', 'tasks', 'packages_and_functions_dataframe.csv'))
end


  csv = CSV.parse(csv_text.scrub, headers: true)
  csv.each do |row|
    t = Flatfile.new
    t.package_names = row['package_names']
    t.function_names = row['function_names']
    t.save
    puts "#{t.package_names} #{t.function_names} saved"
  end





end # End rake task













