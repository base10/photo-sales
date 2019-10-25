require "rails_helper"

RSpec.describe "User signs in", type: :system do
  let(:email) { "sample@example.com" }
  let(:password) { "password" }

  context "with an existing account" do
    it "happens successfully" do
      FactoryBot.create(
        :user,
        email: email
      )

      visit sign_in_path

      fill_in "Email", with: email
      fill_in "Password", with: password

      click_on I18n.t("helpers.submit.session.create")

      expect(page).to have_notice(I18n.t("sessions.create.success"))
    end
  end

  context "without an existing account" do
    it "presents an error message" do
      visit sign_in_path

      fill_in "Email", with: email
      fill_in "Password", with: password

      click_on I18n.t("helpers.submit.session.create")

      expect(page).to have_notice(I18n.t("sessions.create.failure"))
    end
  end
end
