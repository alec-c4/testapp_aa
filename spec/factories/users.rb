FactoryBot.define do
  factory :user, aliases: %i[organizer] do
    email { FFaker::Internet.unique.email }
    password { SecureRandom.hex }
  end
end
