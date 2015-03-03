class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  rescue_from CanCan::AccessDenied , :with => :access_denied

  def record_not_found
  end

  def access_denied
  end
end
