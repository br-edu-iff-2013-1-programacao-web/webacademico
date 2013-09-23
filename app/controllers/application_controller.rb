class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  skip_authorization_check :unless => :devise_controller?
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  protect_from_forgery
  
  before_filter :set_locale

  private
  def set_locale
    I18n.locale = params[:locale] if params[:locale]
    Rails.application.routes.default_url_options[:locale]= I18n.locale
  end
end
