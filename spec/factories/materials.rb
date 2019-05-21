FactoryBot.define do
  factory :material do
    association :course, factory: :course
    name { Faker::Artist.name }
    description { Faker::ChuckNorris.fact }
    file { Faker::File.file_name }
  end
end
