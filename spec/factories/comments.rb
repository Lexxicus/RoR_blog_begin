FactoryBot.define do
  factory :comment do
    author {"Ike"}
    sequence(:body) { |n| "comment body #{n}"}
  end
end
