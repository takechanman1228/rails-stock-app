# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# coding: utf-8
user = User.new
user.email = 'admin@test.com'
user.password = 'password'
user.encrypted_password = '$2a$11$JY3oP7zm49jXS43XC5KyfeQUcjx.QUGdd3QsyIbeN.3ydiDkYyvFy'
user.save!
