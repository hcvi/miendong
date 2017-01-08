class Admin::ContactsController < AdminController
  def index
    @contacts = Contact.all.order("created_at DESC")
  end
end
