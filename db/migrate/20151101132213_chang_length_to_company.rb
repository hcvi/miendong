class ChangLengthToCompany < ActiveRecord::Migration
  def change
    change_column :companies, :background_url, :string, limit: 2083
    change_column :companies, :image_url, :string, limit: 2083
    change_column :services, :image_url, :string, limit: 2083
  end
end
