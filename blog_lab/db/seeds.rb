# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.destroy_all
Post.destroy_all

Author.create([{ first_name: "Ariana", last_name: "Huffington", age: 30 }])
Author.create([{ first_name: "Bro", last_name: "Bible", age: 40 }])
Author.create([{ first_name: "Elie", last_name: "Schoppik", age: 50 }])
Author.create([{ first_name: "Alex", last_name: "Notov", age: 60 }])

Post.create([{ title: "Title1", body: "Body1", category: "Cat1", author_id: 1}])
Post.create([{ title: "Title2", body: "Body2", category: "Cat2", author_id: 2 }])
Post.create([{ title: "Title3", body: "Body3", category: "Cat3", author_id: 3 }])
Post.create([{ title: "Title4", body: "Body4", category: "Cat4", author_id: 4 }])
