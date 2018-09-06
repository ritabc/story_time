
## Seed database with stories (book names)
Story.destroy_all
5.times do |index|
  Story.create!(title: Faker::Book.title)
end

## Seed database with users (Pokemon)
User.destroy_all
10.times do |index|
  User.create!(username: Faker::Pokemon.unique.name)
end

## Seed database with sentences (Hipster speak)
# Sentence.destroy_all
# 50.times do |index|
#   Sentence.create!(sentence_text: Faker::Hipster.sentence)
# end

## Seed database with images (Glyphicons)
images = []
Dir["/Users/rita/Documents/Epicodus/rails/story_time/app/assets/images/glyphs/**"].each do |filename|
  images.push(filename)
end

Image.destroy_all
## Task 1 first, i'm working on seeding the images table

## Task 2
# 20.times do |index|
  image_number = 1 + rand(800)
  images.each do |filename| ## is there a better way to do this than looping through all the files and looking for one matching the image_number?
    if filename.include?(image_number.to_s)
      byebug
      icon_name = filename.split(/\-#{Regexp.escape(image_number.to_s)}\-/)[1].split(".")[0].split("-").join
    end
    Image.create(src: "/assets/images/glyphs/glyphicons-#{image_number}-#{icon_name}.png")
  end ## ends each loop for each filename
# end ## ends loop for each seed Image

puts "Created #{Story.count} stories"
puts "Created #{User.count} users"
puts "Created #{Sentence.count} sentences"
puts images.first
