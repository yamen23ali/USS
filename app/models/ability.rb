class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
      user ||= User.new # guest user (not logged in)

      alias_action :create, :read, :update, :destroy, :to => :crud
      alias_action :create, :destroy , :index , :to => :forbidden

      case user.role
      when :admin
        can  :manage , :all
      when :customer
        can :manage , :all
        cannot :forbidden , User
      end
  end
end
