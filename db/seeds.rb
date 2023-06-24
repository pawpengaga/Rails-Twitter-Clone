# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

650.times do |u|

    dabMeUp =[
    Faker::GreekPhilosophers.quote,
    Faker::Quote.famous_last_words,
    Faker::Lorem.paragraph_by_chars(number: 140, supplemental: false),
    Faker::Marketing.buzzwords,
    Faker::Company.catch_phrase,
    Faker::Quote.most_interesting_man_in_the_world,
    Faker::Quote.singular_siegler,
    Faker::Coffee.notes
    ]
    
    Tweet.create(username: Faker::Name.first_name, description: dabMeUp[rand(0..7)])
end