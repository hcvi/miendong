class AddImageTitleToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :image_title_en, :string
    add_column :companies, :image_title_vn, :string
    add_column :companies, :image_description_en, :text
    add_column :companies, :image_description_vn, :text
  end
end
