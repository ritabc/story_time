## Seed database with stories (book names)
Story.destroy_all
50.times do |index|
  Story.create!(title: Faker::Book.title)
end

## Seed database with users (Pokemon)
10.times do |index|
  User.create!(username: Faker::Pokemon.name)
end

puts "Created #{Story.count} stories"
puts "Created #{User.count} users"
