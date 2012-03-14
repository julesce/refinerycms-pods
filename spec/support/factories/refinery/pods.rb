
FactoryGirl.define do
  factory :pod, :class => Refinery::Pods::Pod do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

