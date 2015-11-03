class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "admin", password: "admin@1234"
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :set_company
  private

  def set_locale
    if params[:locale].present? && /(^en$|^vn$)/.match(params[:locale])
      session[:locale] = params[:locale]
    end
    I18n.locale = session[:locale] || I18n.default_locale
  end

  def set_company
    @company = Company.first
  end
end
