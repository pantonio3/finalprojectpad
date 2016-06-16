# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'servicetypes.csv'))
csv = CSV.parse(csv_text, :headers => true )
csv.each do |row|
  t = Servicetype.new
  t.name = row['name']
  t.cost = row['cost']
  t.save
  puts "#{t.name}, #{t.cost} saved"
end

puts "There are now #{Servicetype.count} rows in the service types table_
