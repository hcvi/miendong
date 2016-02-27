class ServicesController < ApplicationController


  def index
    add_breadcrumb I18n.t('menu.home'), :root_path
    add_breadcrumb I18n.t('menu.service'), :services_path
    @services = Service.all.order('id ASC')
  end
end
