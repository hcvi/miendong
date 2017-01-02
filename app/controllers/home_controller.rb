class HomeController < ApplicationController
  def index
    add_breadcrumb I18n.t('menu.home'), :root_path

    @services = Service.all
    @main_products = Product.includes(:images).where(main_product: true)
                            .limit(6)

  end
end
