# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

chase = User.create(name: "Chase", email: "chasemerlin@gmail.com", password: "aa")
james = User.create(name: "James", email: "jamescrater@gmail.com", password: "aa")
chris = User.create(name: "Chris", email: "camcelve@gmail.com", password: "aa")


lean_startup_skill = Skill.create(name: "Lean Startup")

project = Project.create(name: "Team Task Manager")


