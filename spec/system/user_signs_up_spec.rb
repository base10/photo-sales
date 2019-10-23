require "rails_helper"

RSpec.describe "User creates an account", type: :system do
  it "happens successfully" do
    visit sign_up_path

    fill_in "Name", with: "Nathan"
    fill_in "Email", with: "nathan@example.com"
    fill_in "Password", with: "foobarbaz"

    click_on I18n.t("helpers.submit.user.create")

    expect(page).to have_notice(I18n.t("users.create.success"))
  end
end
