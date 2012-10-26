class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :original
      t.string :translate

      t.timestamps
    end
  end
end
