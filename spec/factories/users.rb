FactoryBot.define do
  factory :user do
    name { Faker::Internet.username(specifier: 5..6)}
    email { Faker::Internet.free_email }
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
  end
end
