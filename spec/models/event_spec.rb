require "rails_helper"

RSpec.describe Event, type: :model do
  subject(:event) { described_class.new }

  describe "associations" do
    it { should belong_to(:organizer) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
