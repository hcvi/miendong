class ContactController < ApplicationController

  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params_update)
    flash[:notice] = ""
  end

  private

  def params_update
    params.require(:contact)
      .permit(
        :name,
        :email,
        :company,
        :address,
        :phone,
        :subject,
        :message
      )
  end
end
