class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :breadcrumbs

  def breadcrumbs
    @breadcrumbs ||= []
  end

  def add_breadcrumb(name, path = nil)
    breadcrumbs << Breadcrumb.new(name, path)
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre,:apellidos])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombre,:apellidos])
  end

end
