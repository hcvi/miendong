class AddImageUrlToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_url, :string, limit: 2083
    add_column :products, :status, :string
    add_column :products, :summary_description, :text
    remove_column :products, :images
  end
end
