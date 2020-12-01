# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
User.destroy_all

50.times do 
    Cocktail.create(name: Faker::Beer.name, alcohol_percentage: Faker::Beer.alcohol, instructions: Faker::Beer.style)
end

10.times do
    User.create(name: Faker::Internet.username, password: 000, email: Faker::Internet.email)
end

60.times do
    Review.create(content: Faker::Hipster.sentence, stars: rand(1..5), user: User.all.sample.id, cocktail: Cocktail.all.sample.id)
end



