class Admin::ProductsController < ApplicationController
  before_action :find_model, only: [:update, :edit, :destroy]
  before_action :services, only: [:index, :edit]

  def index
    @company = Company.first
    @product = Product.new(company_id: @company.id)
    3.times { @product.images.build }
    @products = Product.all.order('id DESC')

  end

  def edit

  end

  def update
    if @product.update_attributes(params_update)
      redirect_via_turbolinks_to admin_products_path
    else
      render :edit
    end
  end

  def create
    @product = Product.create(params_update)
    flash[:notice] = "Success create product"
  end

  def destroy
    @id = @product.id
    @product.destroy
  end

  private

  def params_update
    params.require(:product)
      .permit(
        :name,
        :description,
        :summary_description,
        :image_url,
        :status,
        :company_id,
        :service_id
      )
  end

  def find_model
    @product = Product.find(params[:id])
  end

  def services
    @services_collections = Service.all.pluck(:name, :id)
  end

end
