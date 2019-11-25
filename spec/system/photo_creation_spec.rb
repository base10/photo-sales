require "rails_helper"

RSpec.describe "Photo Creation", type: :system do
  describe "viewing the creation form" do
    context "as a logged in user" do
      let(:user) { FactoryBot.create(:user) }

      before(:example) do
        sign_in(user)
      end

      it "presents the photo creation form" do
        visit new_photo_path

        expect(page).to have_http_status(:ok)
      end
    end

    context "as a visitor" do
      it "requires a login" do
        visit new_photo_path

        expect(page).to have_notice(
          I18n.t("account_actions.sign_in_notice")
        )

        expect(page).to have_http_status(:unauthorized)
      end
    end
  end

  describe "adding a photo" do
  end
end
