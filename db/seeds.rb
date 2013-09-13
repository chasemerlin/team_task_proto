# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

chase = User.create(name: "Chase", email: "chasemerlin@gmail.com", password: "aa")
james = User.create(name: "James", email: "jamescrater@gmail.com", password: "aa")

lean = Skill.create(name: "Leans")

project = Project.create(name: "General")

