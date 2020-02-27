# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# add simple Book with author and group


author = Author.create!(name: "Walter Scott")
group = Group.create!(name: "Adventure")
book = Book.new(title: "Ivanhoe", image: "https://prodimage.images-bn.com/pimages/9781593082468_p0_v1_s550x406.jpg")
book.authors << author
book.groups << group
book.save