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

cocktail_images = [
    "https://untappd.akamaized.net/photos/2018_05_30/4814406928c1f11ef911c8857a0fb29d_640x640.jpeg",
    "https://untappd.akamaized.net/photos/2018_05_28/338d8879f6a96d7481df678d3f509d4d_640x640.jpg",
    "https://pbs.twimg.com/media/EOBQiBvWAAA5GLv.jpg",
    "https://i.pinimg.com/236x/31/57/9d/31579dfce1e9d67607be18ed3112188c--drinks-alcohol-alcoholic-beverages.jpg",
    "https://images.squarespace-cdn.com/content/v1/5ce849fdc95df000011ea5e7/1601943082136-NNB9QCGK0HKSWDE876NI/ke17ZwdGBToddI8pDm48kMtiXMEMZ8ID8MVhA-T_Qc9Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIXpy3a2Cibo6eml5BpILeGX-BY3QvcZT7F317PmmzovI/R%26D+4.0.png?format=1000w",
    "https://rarbrewing-images.imgix.net/2019/11/DSC_2488.jpg?auto=compress%2Cformat&fit=crop&h=600&ixlib=php-1.2.1&w=600&wpsize=tile_strict&s=e83f8935b0f86178743880cefc091f6a",
    "https://www.sciencenews.org/wp-content/uploads/2020/05/050620_mt_beer_feat-1028x579.jpg",
    "https://stmedia.stimg.co/ctyp-092320-Beer-Issue-Getty.jpg?w=1200&h=630",
    "https://i.dailymail.co.uk/1s/2019/09/16/14/18535700-0-image-a-50_1568639482087.jpg",
    "https://media.wired.com/photos/5f066bb7af3d0a069fd1d63d/1:1/w_1800,h_1800,c_limit/Gear-Homebrew-630019103.jpg",
]

50.times do
    Cocktail.create(drink: Faker::Beer.name, alcohol_percentage: Faker::Beer.alcohol, style: Faker::Beer.style, brand: Faker::Beer.brand, description: Faker::Hipster.sentence, img_url: cocktail_images.sample)
end

# 1.times do
#     User.create(name: Faker::Internet.username, password: 'pass123', email: Faker::Internet.email, age: rand(21..105))
# end

# 60.times do
#     Review.create(content: Faker::Hipster.sentence, stars: rand(1..5), user_id: User.all.sample.id, cocktail_id: Cocktail.all.sample.id)
# end




