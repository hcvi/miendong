class AddMainProductToProducts < ActiveRecord::Migration
  def change
    add_column :products, :main_product, :boolean
  end
end
