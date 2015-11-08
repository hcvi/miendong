class ProductsController < ApplicationController
  def index
    @products_complete = Product.all
    @products_working = Product.all
  end

  def show
  end
end
