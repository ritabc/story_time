
## Seed database with stories (book names)
Story.destroy_all
5.times do |index|
  Story.create!(title: Faker::Book.title)
end

## Seed database with users (Pokemon)
User.destroy_all
10.times do |index|
  User.create!(username: Faker::Pokemon.name)
end

## Seed database with sentences (Hipster speak)
Sentence.destroy_all
50.times do |index|
  Sentence.create!(sentence_text: Faker::Hipster.sentence)
end

## Seed database with images (Glyphicons)
images = []
Dir["/Users/rita/Documents/Epicodus/rails/story_time/app/assets/images/glyphs/**"].each do |filename|
  images.push(filename)
end

Image.destroy_all
20.times do |index|
  image_number = 1 + rand(800)
  images.each do |filename|
    if filename.includes?(image_number)
      icon_name = filename.split("image_number")[1].split(".")[0].split("-").join
    end ## for if - get icon_name from number
    Image.create(src: "/assets/images/glyphs/glyphicons-#{image_number}-#{icon_name}.png"
    break
  end ## ends each loop for each filename
end ## ends loop for each seed Image

puts "Created #{Story.count} stories"
puts "Created #{User.count} users"
puts "Created #{Sentence.count} sentences"
puts images.first
