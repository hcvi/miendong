class RemoveColumnsToComapany < ActiveRecord::Migration
  def change
    remove_column :companies, :about_us_title_en
    remove_column :companies, :about_us_title_vn
    remove_column :companies, :about_us_content_vn
    remove_column :companies, :about_us_content_en
    remove_column :companies, :image_title_en
    remove_column :companies, :image_title_vn
    remove_column :companies, :image_description_en
    remove_column :companies, :image_description_vn
  end
end

#  about_us_title_en    :string(255)
#  about_us_title_vn    :string(255)
#  about_us_content_vn  :text
#  about_us_content_en  :text
#  image_title_en       :string(255)
#  image_title_vn       :string(255)
#  image_description_en :text
#  image_description_vn :text
