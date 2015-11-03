class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :images
      t.integer :company_id
      t.integer :service_id
      t.string :service_name
      t.timestamps
    end
  end
end
