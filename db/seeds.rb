# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb

# on parse des vrais noms d'ingredients sur la Json list: https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list
require 'json'
require 'open-uri'

puts "creating seeds"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
list = JSON.parse(user_serialized)

20.times do
Ingredient.create(name: list['drinks'][rand(0..159)]['strIngredient1'])
end
puts "finished"
