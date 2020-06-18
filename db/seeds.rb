# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.destroy_all
User.destroy_all
UserCompany.destroy_all

apple = Company.create(symbol: "AAPL")
ge = Company.create(symbol: "GE")
facebook = Company.create(symbol: "FB")
coke = Company.create(symbol: "COKE")

skyler = User.create(username: "Skyler", email: "skyler@gmail.com", password: "password")
brook = User.create(username: "Brook", email: "brook@gmail.com", password: "password")
spencer = User.create(username: "Spencer", email: "spencer@gmail.com", password: "password")
paige = User.create(username: "Paige", email: "paige@gmail.com", password: "password")

stocks1 = UserCompany.create(user_id: 1, company_id: 1)
stocks2 = UserCompany.create(user_id: 2, company_id: 2)
stocks3 = UserCompany.create(user_id: 1, company_id: 2)
