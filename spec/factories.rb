require 'factory_girl'

FactoryGirl.define do
  sequence :email do |n|
    'user#{n}@test.com'
  end

  factory :user do |u|
    u.name 'Test User'
    u.email { Factory.next(:email) }
    u.password 'please'
    u.password_confirmation 'please'
  end

  factory :project do |p|
    p.name 'Mona Lisa'
  end

  factory :contribution_preference do |cp|
    cp.name 'User research'
  end

  factory :membership do |m|
    m.association :project
    m.association :user
  end
end

