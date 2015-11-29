class ContactController < ApplicationController


  def index
    add_breadcrumb I18n.t('menu.home') , :root_path
    add_breadcrumb I18n.t('menu.contact') , :contact_path
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
