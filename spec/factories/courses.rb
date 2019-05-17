# frozen_string_literal: true

# require 'faker'

FactoryBot.define do
  factory :course do
    name { Faker::Educator.course_name }
    description { Faker::Educator.subject }
  end
end
