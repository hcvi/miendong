# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string
#  description         :text
#  company_id          :integer
#  service_id          :integer
#  service_name        :string
#  created_at          :datetime
#  updated_at          :datetime
#  image_url           :string(2083)
#  summary_description :text
#  status              :integer
#  slug                :string
#  main_product        :boolean
#

class ProductsController < ApplicationController

  def index
    add_breadcrumb I18n.t('menu.home') , :root_path
    breadcrumb_products(params[:status])
    if params[:status].present?
      @products = Product.where(status: Product.statuses[params[:status]])
    else
      @products = Product.all
    end
  end

  def show
    @product  = Product.find_by(slug: params[:slug])
    add_breadcrumb I18n.t('menu.home') , :root_path
    breadcrumb_products(@product.status)
    add_breadcrumb @product.name,  product_path(@product.slug)
  end

  private
  def breadcrumb_products(status)
    if status == "working"
      add_breadcrumb "#{I18n.t('menu.products')} #{I18n.t('menu.products_working')}",  products_path(status: 'working')
    elsif status == "completed"
      add_breadcrumb "#{I18n.t('menu.products')} #{I18n.t('menu.products_complete')}",  products_path(status: 'working')
    else
      add_breadcrumb I18n.t('menu.products'), products_path
    end
  end
end
