require 'faker'

FactoryGirl.define do
  factory :comment do
    content "polikarpovi4"
    user
    post
  end

  
end