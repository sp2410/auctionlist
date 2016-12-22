# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Resturants_category = Category.where(name: "Resturants").first_or_create(name: "Resturants")
Industrial_category = Category.where(name: "Industrial").first_or_create(name: "Industrial")
Commercial_category = Category.where(name: "Commercial").first_or_create(name: "Commercial")

Product.where(name: "Mc Donalds", category_id: Resturants_category.id).first_or_create(name: "Mc Donalds")
Product.where(name: "Burger King", category_id: Resturants_category.id).first_or_create(name: "Burger King")
Product.where(name: "Ricardo", category_id: Resturants_category.id).first_or_create(name: "Ricardo")
Product.where(name: "King Burger", category_id: Resturants_category.id).first_or_create(name: "King Burger")


Product.where(name: "CSC", category_id: Industrial_category.id).first_or_create(name: "CSC")
Product.where(name: "Mechanical brothers", category_id: Industrial_category.id).first_or_create(name: "Mechanical brothers")
Product.where(name: "Civil llc", category_id: Industrial_category.id).first_or_create(name: "Civil llc")
Product.where(name: "Syracuse Auto parts", category_id: Industrial_category.id).first_or_create(name: "Syracuse Auto parts")


Product.where(name: "AirCanda", category_id: Commercial_category.id).first_or_create(name: "AirCanda")
Product.where(name: "Greenlakes Tours", category_id: Commercial_category.id).first_or_create(name: "Greenlakes Tours")
Product.where(name: "Centro", category_id: Commercial_category.id).first_or_create(name: "Centro")
Product.where(name: "Trucks and co", category_id: Commercial_category.id).first_or_create(name: "Trucks and co")

