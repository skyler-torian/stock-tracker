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

apple = Company.create(symbol: "AAPL", company: "Apple Inc", name: "Apple", exchange: "Nasdaq", industry: "Computer Hardware", website: "www.apple.com", description: "Apple Inc is an American multinational technology company. It designs, manufactures, and markets mobile communication and media devices, personal computers, and portable digital music players", ceo: "Tim Cook", sector: "Technology")
ge = Company.create(symbol: "GE", company: "General Electric Co", name: "GE", exchange: "Nasdaq", industry: "Hardware", website: "www.ge.com", description: "General Electric is an American multinational technology company. It makes microwaves, ovens, planes, power plants, and more", ceo: "Billy Eisner", sector: "Technology")

skyler = User.create(username: "Skyler", email: "skyler@gmail.com")
brook = User.create(username: "Brook", email: "brook@gmail.com")
spencer = User.create(username: "Spencer", email: "spencer@gmail.com")
paige = User.create(username: "Paige", email: "paige@gmail.com")

stocks1 = UserCompany.create(user_id: 1, company_id: 1)
stocks2 = UserCompany.create(user_id: 2, company_id: 2)
stocks3 = UserCompany.create(user_id: 1, company_id: 2)
