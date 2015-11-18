class AddImageUrlToImages < ActiveRecord::Migration
  def change
    add_column :images, :url_thumb, :string, limit: 2083
    add_column :images, :url, :string, limit: 2083
    add_column :images, :product_id, :integer
    add_column :images, :title, :string
    add_column :images, :position, :string
  end
end
