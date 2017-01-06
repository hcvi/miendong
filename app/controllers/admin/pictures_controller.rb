class Admin::PicturesController < ApplicationController
  before_filter :find_model , only: [:update]
  protect_from_forgery with: :null_session

  def index
    @new_picture = Picture.new
    @pictures = Picture.all
  end

  def update
    @picture.update_attributes(params_update)
  end

  def create
    @picture = Picture.create(params_update)
    flash[:notice] = "Success create picture"
    redirect_to admin_pictures_path
  end

  private

  def find_model
    @picture = Picture.find(params[:id])
  end

  def params_update
     params.require(:picture)
      .permit(:name, :image)
  end

end
