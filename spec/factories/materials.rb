FactoryBot.define do
  factory :material do
    association :course, factory: :course
    name { Faker::Artist.name }
    description { Faker::ChuckNorris.fact }
    file { "react.txt" }
  end
end
