require "rails_helper"

RSpec.describe Photo, type: :model do
  subject { FactoryBot.create(:photo) }

  describe "validations" do
    it { should validate_presence_of(:geoprivacy) }
    it { should validate_presence_of(:slug) }
    it { should validate_presence_of(:file_name) }
    it { should validate_uniqueness_of(:slug).scoped_to(:user_id) }
  end

  describe "associations" do
    it { should belong_to(:user) }

    it "should have an attached image_file" do
      expect(subject.image_file).to be_an_instance_of(
        ActiveStorage::Attached::One
      )
    end
  end
end
