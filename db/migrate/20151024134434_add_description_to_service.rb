class AddDescriptionToService < ActiveRecord::Migration
  def change
    add_column :services, :description, :text
    add_column :services, :sub_service, :text
  end
end
