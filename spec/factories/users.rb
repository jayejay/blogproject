FactoryGirl.define do

  sequence(:email) {|n| "test_user_#{n}@test.com"}
  sequence(:last_name) {|n| "User_#{n}"}
  sequence(:nick_name) {|n| "testy_user_#{n}"}

  factory :user do
    first_name "Test"
    last_name
    nick_name
    email
    password "123test"
    admin false
    moderator false
  end
end
