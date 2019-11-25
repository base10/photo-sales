# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end


class ApplicationController < ActionController::Base
  include Oath::ControllerHelpers

  def current_user
    super || GuestUser.new
  end
end
