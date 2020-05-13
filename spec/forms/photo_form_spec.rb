require "rails_helper"

describe PhotoForm do
  let(:user) { FactoryBot.create(:user) }

  let(:attributes) do
    attributes_for(:photo).merge(user_id: user.id)
  end

  describe "valid?" do
    it "is true with all attributes provided" do
      form = described_class.new(attributes)

      expect(form.valid?).to be_truthy
    end

    it "is true without a description" do
      form = described_class.new(
        attributes.merge(description: nil)
      )

      expect(form.valid?).to be_truthy
    end

    it "is true without a geoprivacy value" do
      form = described_class.new(
        attributes.merge(geoprivacy: nil)
      )

      expect(form.valid?).to be_truthy
    end

    it "is true without a copyright year" do
      form = described_class.new(
        attributes.merge(copyright_year: nil)
      )

      expect(form.valid?).to be_truthy
    end

    it "is true without shutter speed" do
      form = described_class.new(
        attributes.merge(shutter_speed: nil)
      )

      expect(form.valid?).to be_truthy
    end

    it "is true without aperture" do
      form = described_class.new(
        attributes.merge(aperture: nil)
      )

      expect(form.valid?).to be_truthy
    end

    it "is false without slug" do
      form = described_class.new(
        attributes.merge(slug: nil)
      )

      expect(form.valid?).to be_falsey
    end

    it "is false without title" do
      form = described_class.new(
        attributes.merge(title: nil)
      )

      expect(form.valid?).to be_falsey
    end

    it "is false without user_id" do
      form = described_class.new(
        attributes.merge(user_id: nil)
      )

      expect(form.valid?).to be_falsey
    end
  end
end
