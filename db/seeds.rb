# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin = User.create(username: 'Admin', password: 'password')
test1 = User.create(username: 'Test1', password: 'password')
test2 = User.create(username: 'Test2', password: 'password')

