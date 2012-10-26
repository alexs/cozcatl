class AddFieldInTranslation < ActiveRecord::Migration
  def up 
    add_column :translations, :phrase, :boolean
  end

  def down
  end
end
