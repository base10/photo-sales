class ApplicationController < ActionController::Base
  include Oath::ControllerHelpers
  protect_from_forgery with: :exception

  def current_user
    super || GuestUser.new
  end
end
