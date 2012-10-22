class AddFieldForPriceLoad < ActiveRecord::Migration
   def self.up
        add_column :products, :original_price, :float
    end

    def self.down
        remove_column :products, :original_price
    end
end
