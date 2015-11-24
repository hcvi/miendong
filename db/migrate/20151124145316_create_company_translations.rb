class CreateCompanyTranslations < ActiveRecord::Migration
  def up
    Company.create_translation_table!({
      name: :string,
      address: :string,
      about_us_title: :string,
      about_us_content: :text,
      image_title: :string,
      image_description: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Image.drop_translation_table! migrate_data: true
  end

end
