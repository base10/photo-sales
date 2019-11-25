Oath.configure do |config|
  config.sign_in_notice = -> { I18n.t("account_actions.sign_in_notice") }
end
