class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :image_url
      t.integer :company_id
      t.string :tags

      t.timestamps
    end
  end
end
