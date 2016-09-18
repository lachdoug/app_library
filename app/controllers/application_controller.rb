class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :authenticate

  protected

  # Authenticate the user with token based authentication
  def authenticate
    authenticate_user! unless public_action
  end

  def public_action
    controller_name == 'apis' || controller_name == 'homes'
  end

end
