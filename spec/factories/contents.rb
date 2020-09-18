FactoryBot.define do
  factory :content do
    message       {'頑張りましたね！'}

    association :user

    after(:build) { |content| content.image.attach(io: File.open(Rails.root.join('public', 'images', 'camera.png')), filename: 'camera.png', content_type: 'image/png') }
  end
end
