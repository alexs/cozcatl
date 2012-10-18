class CreateLoadFiles < ActiveRecord::Migration
  def change
    create_table :load_files do |t|
      t.string :fichero

      t.timestamps
    end
  end
end
