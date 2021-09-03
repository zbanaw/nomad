# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'coaches.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  # To normalize data
  c = Coach.find_or_create_by!(
    name: row['Name'],
    timezone: row['Timezone'][12..-1] # Remove formatted_offset
  )
  tz = ActiveSupport::TimeZone[c.timezone]

  a = AvailableTime.new
  a.coach_id = c.id
  a.day_of_week = row["Day of Week"].to_date.wday # Day as integers
  a.start = tz.local_to_utc(row["Available at"].to_time) # Date to UTC
  a.end = tz.local_to_utc(row["Available until"].to_time) # Date to UTC
  a.save!
end

puts "#{Coach.count} Coaches added"
puts "#{AvailableTime.count} Available Times added"
