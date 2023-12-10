class Event < ApplicationRecord
  belongs_to :organizer, class_name: "User"
  has_rich_text :description

  validates :name, :event_date, :location, :organizer_id, presence: true
end
