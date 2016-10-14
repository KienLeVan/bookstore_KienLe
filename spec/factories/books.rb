FactoryGirl.define do
  factory :book do
    title "Ruby on Rails Tutorial"
    description "Learn Web Development with Rails"
    author_name "Michael Hartl"
    publisher_name "Addison-Wesley Professional"
    published_date "2012-08-06 17:38:22"
    unit_price 17.75
    photo "ruby_on_rails_tutorials.png"
  end
end
