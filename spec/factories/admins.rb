FactoryBot.define do
  factory :admin do
    sequence(:name) { |n| "liss#{n}" }
    sequence(:email) { |n| "liss#{n}@emailg.com" }
    password { 'liss1234' }
    password_confirmation { 'liss1234' }
  end
end
