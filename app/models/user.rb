class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :events, class_name: "Event", foreign_key: "organizer_id", dependent: :destroy

  def to_s
    email
  end
end
