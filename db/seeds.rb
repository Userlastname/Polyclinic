# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(phone: '0954481341', password: 'password', password_confirmation: 'password')
Category.create!(name: 'Immunologist')
Category.create!(name: 'Surgeon')
Category.create!(name: 'Therapist')
Doctor.create!(first_name: 'House', last_name: 'Gregory', phone: '0954481343', category_id: 1)
Doctor.create!(first_name: 'Paul', last_name: 'Industrious', phone: '0954481341', category_id: 2)
Doctor.create!(first_name: 'Ford', last_name: 'Garryson', phone: '0954481342', category_id: 3)
