# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.delete_all if Rails.env.development?

10.times do
  Article.create(title: Faker::TvShows::StrangerThings.character, content: Faker::TvShows::StrangerThings.quote)
end

puts "You've created #{Article.count} articles"
