class HomeController < ApplicationController
  def index
    add_breadcrumb I18n.t('menu.home'), :root_path

    @services = Service.all
    @products_complete = Product.where(status: Product.statuses['completed'])
                                .limit(6)
    @products_working = Product.where(status: Product.statuses['working'])
                               .limit(6)
  end
end
