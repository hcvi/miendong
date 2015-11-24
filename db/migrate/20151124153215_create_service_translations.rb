class CreateServiceTranslations < ActiveRecord::Migration
  def up
    Service.create_translation_table!({
      name: :string,
      description: :text,
      sub_service: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Image.drop_translation_table! migrate_data: true
  end

end

