module UserSignInHelper
	
  def sign_in_as_a_valid_user(user)
    # ASk factory girl to generate a valid user for us.
    user.confirmed_at = Time.zone.now
    user.save
    sign_in User.find_by_email(user.email)
  end

end