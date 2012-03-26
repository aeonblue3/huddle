FactoryGirl.define do
  factory :status_report do
    project "huddle"
    user "one"
    yesterday Faker::Company.bs
    today Faker::Company.bs
    status_date "2009-01-23"
  end
end