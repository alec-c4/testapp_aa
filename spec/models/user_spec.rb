require "rails_helper"

RSpec.describe User, type: :model do
  subject(:user) { described_class.new }

  describe "associations" do
    it { should have_many(:events).dependent(:destroy) }
  end

  describe "validations" do
    it { should validate_presence_of(:email) }
  end
end
