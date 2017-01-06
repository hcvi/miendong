# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  image_url  :string
#  company_id :integer
#  tags       :string
#  created_at :datetime
#  updated_at :datetime
#  slug       :string
#

class BlogsController < ApplicationController


  def index
    add_breadcrumb I18n.t('menu.home') , :root_path
    add_breadcrumb I18n.t('menu.home') , :blog_path

  end

  def show
    add_breadcrumb I18n.t('menu.home') , :root_path
    add_breadcrumb I18n.t('menu.home') , :blog_path
  end
end
