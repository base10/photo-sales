module Features
  def have_notice(text)
    have_data_role(role: "flash-notice", text: text)
  end

  def have_data_role(role:, text:)
    have_css("[data-role='#{role}']", text: text, visible: true)
  end
end
