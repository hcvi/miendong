class AddImageUrlToService < ActiveRecord::Migration
  def change
    add_column :services, :image_url, :string, array: true, default: []
    add_column :services, :icon, :string
  end
end
