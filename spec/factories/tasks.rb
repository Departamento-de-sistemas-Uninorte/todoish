# This will guess the Task class
FactoryBot.define do
  factory :task do
    sequence(:id) { |n| }
    title {  "Task title - Rspec test" }
    description { "Task Description - Rspec test" }
    created_at { Time.now }
    updated_at { Time.now }
  end
end

