resolution_descriptions = [
  "stop sleeping 14 hours a day",
  "stop eating too much of junk food",
  "stop killing people by singing",
  "behave more like a person of my gender",
  "eat less",
  "watch p*rn only once a day",
  "restrain yourself from watching Balayya's movie",
  "bath atleast once in three days",
  "do less laundry and use more deodorant. Save water",
  "avoid taking a bath whenever possible and conserve more water",
  "stop mailing, texting, facebooking and talking on the phone at the same time with the same person",
  "think of a password other than 'password'",
  "find my soul mate .... and five extra partners",
  "procrastinate less. I will watch favorite shows before work"
]

puts "*** Cleaning up Resolutions"
Resolution.destroy_all

puts "*** Seeding Resolutions"
resolution_descriptions.each do |description|
  Resolution.find_or_create_by_description(description)
  puts "  * #{description}"
end