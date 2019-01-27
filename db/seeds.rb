# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Task.destroy.all
# User.destroy.all

Admin = User.create(username: 'Admin', role: 'Manager', password: 'password')
John_Doe = User.create(username: 'John Doe', role: 'Technician', password: 'password')
Mary_Sue = User.create(username: 'Mary Sue', role: 'Customer Service', password: 'password')
Tan_Ah_Kow = User.create(username: 'Tan Ah Kow', role: 'Recruiting', password: 'password')
Kah_Na_Fayed = User.create(username: 'Kah Nah Fayed', role: 'Security Officer', password: 'password')

# Why do these not run???
# All_Tasks = Task.create(
# 	[{title: 'Manage People',
# 	details: 'I am a Manager thats my job',
# 	tags: 'admin, boss, management',
# 	deadline: Date.today + 1.years,
# 	completed: false,
# 	completion_date: nil,
# 	approved: false,
# 	user_id: 'Admin'},

# 	{title: 'Replace faulty wiring',
# 	details: 'A wire at main building, level 5, office 3 has come apart and needs to be completely replaced',
# 	tags: 'electrical, wiring, repair, technician',
# 	deadline: Date.today + 1.weeks,
# 	completed: false,
# 	completion_date: nil,
# 	approved: false,
# 	user_id: 'John Doe'},
		
# 	{title: 'Repair faulty projector',
# 	details: 'Projector at seminar room non functioning due to faulty display',
# 	tags: 'electrical, repair, projector',
# 	deadline: Date.today - 3.days,
# 	completed: true,
# 	completion_date: Date.today - 4.days,
# 	approved: true,
# 	user_id: 'John Doe'},
	
# 	{title: 'Attend to Customer Refund Request (faulty blender)',
# 	details: 'Customer requests refund for blender allegedly faulty at time of purchase',
# 	tags: 'refund, customer',
# 	deadline: Date.today,
# 	completed: true,
# 	completion_date: Date.today,
# 	approved: false,
# 	user_id: 'Mary Sue'},
	
# 	{title: 'Delete Kah Na Fayed from users list',
# 	details: 'Fayed has been relieved from duty after being caught sleeping on the job repeatedly. He is to be removed from the system ASAP',
# 	tags: 'employee, termination',
# 	deadline: Date.today + 1.days,
# 	completed: false,
# 	completion_date: nil,
# 	approved: false,
# 	user_id: Admin},
	
# 	{title: 'Ask Kan Hao (replacement security officer) to sign up for account ASAP',
# 	details: 'Ensure he creates account as soon as possible so he may begin duties',
# 	tags: 'security, hiring, new employee',
# 	deadline: Date.today + 5.days,
# 	completed: false,
# 	completion_date: nil,
# 	approved: false,
# 	user_id: 'Admin'},
	
# 	{title: 'Hiring of new security officer',
# 	details: 'Mr Kan Hao has accepted the job offer as of today',
# 	tags: 'new employee, hiring, security',
# 	deadline: Date.today + 1.days,
# 	completed: true,
# 	completion_date: Date.today,
# 	approved: false,
# 	user_id: 'Tan Ah Kow'},
	
# 	{title: 'Review and approve employee tasks',
# 	details: 'Ensure that the job has been completed satisfactorily before approving',
# 	tags: 'management, approval, quality control',
# 	deadline: Date.today + 1.weeks,
# 	completed: false,
# 	completion_date: nil,
# 	approved: false,
# 	user_id: 'Admin'},
	
# 	{title: 'Patrol campus grounds tomorrow',
# 	details: 'Patrol route A',
# 	tags: 'security, patrol',
# 	deadline: Date.today + 1.days,
# 	completed: false,
# 	completion_date: nil,
# 	approved: false,
# 	user_id: 'Kah Na Fayed'},
	
# 	{title: 'Night duty',
# 	details: 'Ensure facility doors are locked and no unauthorized personnel are inside',
# 	tags: 'security, patrol',
# 	deadline: Date.today - 1.week,
# 	completed: true,
# 	completion_date: nil,
# 	approved: true,
# 	user_id: 'Kah Na Fayed'}]														
# )