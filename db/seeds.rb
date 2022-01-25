# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SEEDS HOME
home1 = Home.new(:imagen => '1')

home2 = Home.new(:imagen => '2')

home3 = Home.new(:imagen => '3')

home1.save
home2.save
home3.save