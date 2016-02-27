class AddImageUrlToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :background_url, :string
    add_column :companies, :logo, :string
    add_column :companies, :image_url, :string
    add_column :companies, :about_us_title_en, :string
    add_column :companies, :about_us_title_vn, :string
    add_column :companies, :about_us_content_vn, :text
    add_column :companies, :about_us_content_en, :text
    add_column :companies, :facebook, :string
    add_column :companies, :google_plus, :string
    add_column :companies, :twiter, :string
    add_column :companies, :youtube, :string
    add_column :companies, :linkedin, :string
    add_column :companies, :partners, :string, array: true, default: [] 
  end
end
