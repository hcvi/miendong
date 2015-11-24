class Admin::CompaniesController < ApplicationController
  before_filter :find_model , only: [:update]

  def index
    @company = Company.first || Company.new
  end

  def update
    @company.update_attributes(params_update)
  end

  def create
    @company = Company.create(params_update)
    flash[:notice] = "Success create company"
    redirect_to admin_companies_path
  end

  private

  def params_update
    params.require(:company)
      .permit(
        :name,
        :tax_code,
        :address,
        :longitude,
        :latitude,
        :home_phone,
        :mobile_phone,
        :work_phone,
        :email,
        :ceo,
        :background_url,
        :logo,
        :image_url,
        :image_title,
        :image_description,
        :about_us_title,
        :about_us_content,
        :facebook,
        :gogole_plus,
        :twiter,
        :youtube,
        :linkedin,
        :partners)
  end
  def find_model
    @company = Company.find(params[:id])
  end
end
