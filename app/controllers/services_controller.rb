# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string
#  parent_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#  sub_service :text
#  image_url   :string(2083)     default("--- []\n")
#  icon        :string
#

class ServicesController < ApplicationController


  def index
    add_breadcrumb I18n.t('menu.home'), :root_path
    add_breadcrumb I18n.t('menu.service'), :services_path
    @services = Service.all.order('id ASC')
  end
end
