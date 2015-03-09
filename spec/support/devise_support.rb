module UserSignInHelper

  require 'spec_helper'
include Warden::Test::Helpers	
Warden.test_mode!
  
  def sign_in_as_a_valid_user(user)
    user.confirmed_at = Time.zone.now
    user.save
    sign_in User.find_by_email(user.email)
  end

  def log_in_as_valid_user(user)
    user.confirmed_at = Time.zone.now
    user.save
    login_as(user, :scope => :user, :run_callbacks => false)
  end

end
