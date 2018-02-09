require "rails_helper"

RSpec.describe "User visits the home page" do
  context "guest user" do
    it "shows links for account actions" do
      visit home_path

      within("[data-role='user-actions']") do
        expect(page).to have_link(I18n.t("account_actions.sign_up"))
        expect(page).to have_link(I18n.t("account_actions.sign_up"))
      end
    end
  end

  context "logged in user" do
    it "welcomes the user" do
      user = FactoryBot.create(:user)

      visit home_path(as: user)

      within("[data-role='user-actions']") do
        expect(page).to have_text(I18n.t("account_actions.hello"))
        expect(page).to have_link(I18n.t("account_actions.sign_out"))
      end
    end
  end
end
