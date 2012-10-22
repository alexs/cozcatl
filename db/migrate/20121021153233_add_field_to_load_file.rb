class AddFieldToLoadFile < ActiveRecord::Migration
    def self.up
        add_column :load_files, :percent, :integer
    end

    def self.down
        remove_column :load_files, :percent
    end
end