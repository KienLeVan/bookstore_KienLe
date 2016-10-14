FactoryGirl.define do |r|
  factory :rate do
    value 5
    user
    book
  end
end