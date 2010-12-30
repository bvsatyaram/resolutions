resolution_descriptions = [
  "Stop smoking.",
  "Stop drinking.",
  "Stop sleeping 14 hours a day.",
  "Stop eating too much of junk food.",
  "Learn Music.",
  "Stop killing people by singing."
]

puts "*** Cleaning up Resolutions"
Resolution.destroy_all

puts "*** Seeding Resolutions"
resolution_descriptions.each do |description|
  Resolution.find_or_create_by_description(description)
  puts "  * #{description}"
end