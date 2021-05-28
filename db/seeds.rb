# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Objective.destroy_all
Link.destroy_all

u1 = User.create(name: "a", password: "a")
u2 = User.create(name: "u2", password: "p2")
u3 = User.create(name: "u3", password: "p3")
u4 = User.create(name: "u4", password: "p4")

o1 = Objective.create(name: "Work", user: u1, description: "Code for 2 minutes", duration: 120, seconds: "0", minutes: "1,15", hours: "12, 13", days: "28,30", months: "5,7,8", years: 2021)
o2 = Objective.create(name: "Algorithms", user: u1, description: "Study Algorithms for 2 minutes", duration: 120, seconds: "0", minutes: "3", hours: "12", days: "26", months: "5", years: 2021)
o3 = Objective.create(name: "Resume", user: u1, description: "Work on resume for 2 minutes", duration: 120, seconds: "0", minutes: "5", hours: "12", days: "27", months: "5", years: 2021)
o4 = Objective.create(name: "Relax", user: u1, description: "Relax for 2 minutes", duration: 120, seconds: "0", minutes: "7", hours: "12", days: "28", months: "5", years: 2021)

l1 = Link.create(before_id: o1.id, after_id: o2.id, delay: 0)
l2 = Link.create(before_id: o2.id, after_id: o3.id, delay: 0)
l3 = Link.create(before_id: o3.id, after_id: o4.id, delay: 0)

