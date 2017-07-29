FactoryGirl.define do
  factory :read do
    sequence(:link_url, (1..10).cycle) { |n| "http://website#{n}.com" }
    sequence(:count, (1..10).cycle) { |n| n }
  end
end
