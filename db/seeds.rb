# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.delete_all
book_1 = Book.create!(title: "Ruby on Rails Tutorial", description: "Learn Web Development with Rails", 
    author_name: "Michael Hartl", publisher_name: "Addison-Wesley Professional", published_date: "2012-08-06", unit_price: "17.75", photo:"ruby_on_rails_tutorials.png")

User.delete_all
user_1 = User.create!(email: "jack@email.com", password_digest: BCrypt::Password.create("123"), phone: "1234567", birthday: "1999-11-11")
user_2 = User.create!(email: "jane@email.com", password_digest: BCrypt::Password.create("456"), phone: "7654321", birthday: "1999-12-12")

Rate.delete_all
Rate.create!(value: 5, user_id: user_1.id,book_id: book_1.id)
Rate.create!(value: 4, user_id: user_2.id,book_id: book_1.id)