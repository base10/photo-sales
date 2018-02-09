require "rails_helper"

RSpec.describe GuestUser, type: :model do
  subject { described_class.new }

  it { should_not be_logged_in }
  it { should_not be_admin }
end
