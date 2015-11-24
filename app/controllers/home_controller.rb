class HomeController < ApplicationController
  def index
    @services = Service.all
    @products_complete = Product.where(status: Product.statuses['completed'])
                                .limit(6)
    @products_working = Product.where(status: Product.statuses['working'])
                               .limit(6)
  end
end
