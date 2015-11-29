class BlogsController < ApplicationController


  def index
    add_breadcrumb I18n.t('menu.home') , :root_path
    add_breadcrumb I18n.t('menu.home') , :blog_path

  end

  def show
    add_breadcrumb I18n.t('menu.home') , :root_path
    add_breadcrumb I18n.t('menu.home') , :blog_path
  end
end
