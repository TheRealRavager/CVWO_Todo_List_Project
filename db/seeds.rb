# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test1 =User.create(username: 'Test1', password: 'password')
test2 = User.create(username: 'Test2', password: 'password')


test1.tasks.create([
	{title: 'First Task',
	details: 'This is the first task'},
	{title: 'Second Task',
	details: 'This is the second task'}
])

test2.tasks.create([
	{title: 'Other Task',
	details: 'This should not appear on test1'}
])