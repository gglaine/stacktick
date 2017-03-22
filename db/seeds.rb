# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

# Creating 100 fake articles
30.times do
  article = Article.new(
    title:    Faker::ChuckNorris.fact,
    text: "#{Faker::Lorem.paragraph(3)}",
  )
  article.save!
end
