class AboutController < ApplicationController

  def index
    add_breadcrumb I18n.t('menu.home') , :root_path
    add_breadcrumb I18n.t('menu.about') , :about_path

    @services = Service.all.order('id DESC')
  end
end
