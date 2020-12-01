# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Cocktail.destroy_all
# User.destroy_all
# Review.destroy_all
# AddCocktailToKitchen.destroy_all

50.times do 
    Cocktail.create(drink: Faker::Beer.name, alcohol_percentage: Faker::Beer.alcohol, description: Faker::Beer.style)
end

10.times do
    User.create(name: Faker::Internet.username, password: 'pass123', email: Faker::Internet.email, age: rand(21..105))
end

60.times do
    Review.create(content: Faker::Hipster.sentence, stars: rand(1..5), user: User.all.sample, cocktail: Cocktail.all.sample)
end

50.times do
    AddCocktailToKitchen.new(cocktail: Cocktail.all.sample, kitchen: Kitchen.all.sample)
end



