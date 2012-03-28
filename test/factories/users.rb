FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
  end
  factory :one do
    email "one@one.com"
  end
  factory :two do
    email "two@two.com"
  end
end
