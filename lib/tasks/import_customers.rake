require 'rake'
require 'json'
require 'open-uri'


namespace :import_customers do

  desc 'Import data from a file in AWS S3'
  task :import_json => :environment do
    #First delete the current customer table
    Customer.delete_all

    #Import the data from the customer.json file
    result = JSON.parse open("#{Rails.public_path}/customer.json").read
    result.each {|row| Customer.create(row); print "."}
    puts "end"
  end
end