class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :breadcrumbs

  def breadcrumbs
    @breadcrumbs ||= []
  end

  def add_breadcrumb(name, path = nil)
    breadcrumbs << Breadcrumb.new(name, path)
  end

  def moon
    cookies[:moon] = {
      value: 'dark mode on'
    }
    if user_signed_in?
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def sun
    cookies.delete(:moon)
    if user_signed_in?
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre,:apellidos])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombre,:apellidos])
  end

end
