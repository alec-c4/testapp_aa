FactoryBot.define do
  factory :event do
    name { "MyString" }
    description { nil }
    event_date { "2023-12-10" }
    location { "MyString" }
    organizer { nil }
  end
end
