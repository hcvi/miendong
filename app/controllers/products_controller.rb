class ProductsController < ApplicationController
  def index
    if params[:status].present?
      @products = Product.where(status: Product.statuses[params[:status]])
    else
      @products = Product.all
    end
  end

  def show
    @product  = Product.find_by(slug: params[:slug])
  end
end
