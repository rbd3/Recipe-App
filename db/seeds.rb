# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Tom')
second_user = User.create(name: 'Lilly')
first_food = Food.create(user: first_user, name: 'Hanana',  measurement_unit: 'gramma', price: 100, 
quantity: 20)
first_recipe = Recipe.create(user: first_user, name: 'Hello', preparation_time: 2, cooking_time: 2, 
description: 'you prepare and you coook', public: true)
first_recipe_food = RecipeFood.create(food: first_food, recipe: first_recipe,  quantity: 2)

