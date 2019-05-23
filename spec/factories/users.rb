FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "user#{n}" }
    sequence(:email) { |n| "user#{n}@emailg.com" }
    password { 'user1234' }
    password_confirmation { 'user1234' }
  end
end
