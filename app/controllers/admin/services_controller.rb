class Admin::ServicesController < ApplicationController
  before_filter :find_model , only: [:update, :edit, :destroy]
  
  def index
    @service = Service.new
    @services = Service.all.order('id ASC')
  end

  def edit

  end

  def update
    if @service.update_attributes(params_update)
      redirect_via_turbolinks_to admin_services_path
    else
      render :edit
    end
  end

  def create
    @service = Service.create(params_update)
    flash[:notice] = "Success create service"
  end

  def destroy
    @id = @service.id
    @service.destroy
  end

  private

  def params_update
    params.require(:service)
      .permit(
        :name,
        :sub_service,
        :description,
        :image_url,
        :icon)
  end

  def find_model
    @service = Service.find(params[:id])
  end
end
