class GuestUser < User
  def admin?
    false
  end

  def email
  end

  def name
    "Guest User".freeze
  end

  def logged_in?
    false
  end
end
