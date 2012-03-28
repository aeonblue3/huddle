FactoryGirl.define do
  factory :one_tue do
    project "huddle"
    user factory: :one
    yesterday Faker::Company.bs
    today Faker::Company.bs
    status_date "2009-01-06"
    association :project, factory: :project
  end
  factory :one_wed do
    project "huddle"
    user factory: :one
    yesterday Faker::Company.bs
    today Faker::Company.bs
    status_date "2009-01-07"
    association :project, factory: :project
  end
  factory :two_tue do
    project "huddle"
    user factory: :two
    yesterday Faker::Company.bs
    today Faker::Company.bs
    status_date "2009-01-06"
    association :project, factory: :project
  end
  factory :two_wed do
    project "huddle"
    user factory: :two
    yesterday Faker::Company.bs
    today Faker::Company.bs
    status_date "2009-01-07"
    association :project, factory: :project
  end
end
