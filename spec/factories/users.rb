FactoryGirl.define do
  factory :user do
    email "test@email.com"
    password_digest BCrypt::Password.create("test123")
    phone "12345"
    full_name "User"
    birthday 1999-12-12
    factory :another_user do
      email "another@email.com"
      phone "54321"
      full_name "Another User"
      birthday 1999-11-11
    end
  end
end