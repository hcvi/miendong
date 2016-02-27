class AddColumsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :about_us_title, :string
    add_column :companies, :about_us_content, :text
    add_column :companies, :image_title, :string
    add_column :companies, :image_description, :text
  end
end
