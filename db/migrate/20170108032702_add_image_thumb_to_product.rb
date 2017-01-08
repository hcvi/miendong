class AddImageThumbToProduct < ActiveRecord::Migration
  def change
    add_column :products, :image_thumb, :string
  end
end
