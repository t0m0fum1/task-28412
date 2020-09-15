FactoryBot.define do
  factory :task do
    priority_id             { '2' }
    text                  { '過去問を2年分解く' }

    association :user
  end
end
