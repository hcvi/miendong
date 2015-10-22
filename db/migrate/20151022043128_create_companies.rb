class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :tax_code
      t.string :address
      t.string :home_phone
      t.string :mobile_phone
      t.string :work_phone
      t.string :email
      t.string :ceo

      t.timestamps
    end
  end
end
