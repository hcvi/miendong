class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :company_id
      t.integer :service_id
      t.integer :blog_id
      t.timestamps
    end
  end
end
