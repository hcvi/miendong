class DesignsController < ApplicationController
  def index
    @title = 'THIẾT KẾ KIẾN TRÚC'
    @products = Product.all.design
  end
end
